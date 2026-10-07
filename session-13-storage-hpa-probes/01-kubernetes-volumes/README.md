# Kubernetes Volumes: Storage Architecture Guide

This document covers what I learned and practiced regarding Kubernetes volumes, persistent storage lifecycle, and dynamic provisioning.

---

## 1. Storage Primitives in Kubernetes

### emptyDir
- **What it is**: An ephemeral volume created simultaneously when a Pod is assigned to a node and exists as long as that Pod runs.
- **Use cases**: Scratch space, caching, or sharing files between containers in a multi-container pod.
- **Example**:
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: cache-pod
spec:
  containers:
  - name: web
    image: nginx:alpine
    volumeMounts:
    - mountPath: /cache
      name: cache-volume
  volumes:
  - name: cache-volume
    emptyDir: {}
```

---

### hostPath
- **What it is**: Mounts a file or directory from the host worker node's filesystem directly into the Pod.
- **Use cases**: Running node agents (e.g., node-exporter, Promtail) that need access to host `/var/log` or `/var/run/docker.sock`.
- **Warning**: Binds the pod tightly to that specific node. If the pod reschedules to another node, the data does not move with it.

---

### PersistentVolume (PV)
- **What it is**: A cluster-level storage resource provisioned by an administrator or dynamically provisioned via StorageClasses.
- **Lifecycle**: Completely independent of any individual Pod lifecycle. Even if all pods die, the PV persists.

---

### PersistentVolumeClaim (PVC)
- **What it is**: A request for storage by a user/developer specifying size (e.g. `1Gi`), access mode (`ReadWriteOnce`), and storage class.
- **Binding**: Kubernetes matches the PVC with an available matching PV and binds them 1-to-1.

---

### StorageClass & Dynamic Provisioning
- **StorageClass**: Defines the provisioner (e.g., AWS EBS, GCP PD, Minikube HostPath) and parameters for creating PVs automatically on-demand.
- **Dynamic Provisioning**: Instead of cluster admins manually creating hundreds of static PVs in advance, the CSI driver automatically creates the storage volume and PV when a PVC is applied.

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: app-storage-pvc
spec:
  accessModes:
    - ReadWriteOnce
  storageClassName: standard
  resources:
    requests:
      storage: 1Gi
```
