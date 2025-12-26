![Header](https://raw.githubusercontent.com/hilmoo/hilmoo/refs/heads/main/asset/gopher-icon_selfhst.png)

<h1 align="center">
  <img 
    src="https://raw.githubusercontent.com/hilmoo/hilmoo/refs/heads/main/logo/logo-animate.svg" 
    width="45" 
  />
  homelab
</h1>

<div align="center">
  How I built my homelab
</div>


---
<div align="center">
<table>
  <tr>
    <th>Platform</th>
    <td>
      <div>
        <a href="https://www.proxmox.com"><img alt="Proxmox" src="https://img.shields.io/badge/-Proxmox-black?style=for-the-badge&logo=proxmox"></a>
        <a href="https://www.debian.org"><img alt="Debian" src="https://img.shields.io/badge/-Debian-black?style=for-the-badge&logo=debian&logoColor=%23A81D33"></a>
        <a href="https://kubernetes.io/"><img alt="Kubernetes" src="https://img.shields.io/badge/-Kubernetes-black?style=for-the-badge&logo=kubernetes"></a>
        <a href="https://www.docker.com/"><img alt="Docker" src="https://img.shields.io/badge/-Docker-black?style=for-the-badge&logo=docker&logoColor=%232496ED"></a>
      </div>
    </td>
  </tr>
  <tr>
    <th>Tooling</th>
    <td>
      <div>
        <a href="https://nixos.org/"><img alt="Nix" src="https://img.shields.io/badge/-Nix-black?style=for-the-badge&logo=nixos"></a>
        <a href="https://fluxcd.io/"><img alt="Flux" src="https://img.shields.io/badge/-Flux-black?style=for-the-badge&logo=flux"></a>
        <a href="ansible.com"><img alt="Ansible" src="https://img.shields.io/badge/-Ansible-black?style=for-the-badge&logo=ansible"></a>
        <a href="https://taskfile.dev/"><img alt="Task" src="https://img.shields.io/badge/-Task-black?style=for-the-badge&logo=task"></a>
        <a href="https://github.com/renovatebot/renovate"><img alt="Renovate" src="https://img.shields.io/badge/-Renovate-black?style=for-the-badge&logo=renovate"></a>
      </div>
    </td>
  </tr>
</table>
</div>


## **Overview**

### **Servers**

My servers mostly run inside Proxmox with Debian as the OS. You can check [my ansible code](./ansible/) to see how I deploy the VMs.

All my services are containerized, using [Docker Compose](./docker/) or [orchestrated with Kubernetes](./kubernetes/).

Some highlighted components of the stack:
1. [K3s](https://k3s.io/) as the K8s distribution I use
2. [Flux](https://fluxcd.io/) as my GitOps solution for Kubernetes
3. [Bitwarden Secrets Manager](https://bitwarden.com/products/secrets-manager/) for storing my secrets and consuming them programmatically
4. [Ansible](https://ansible.com/) to deploy new VMs inside Proxmox
5. [Renovate](https://github.com/renovatebot/renovate) to keep my services always up to date

### **IoT**

_Soon_

### **External Services**

I decided not to self-host all my infra because some of the services need near-perfect reliability.

<table>
  <thead>
    <tr>
      <th>Service</th>
      <th>Purpose</th>
      <th>Why</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
      <a href="https://bitwarden.com/products/secrets-manager">Bitwarden Secrets</a>
      </td>
      <td>Storing Secrets
      </td>
      <td>
      Self-hosting this creates a chicken-and-egg problem during recovery
      </td>
    </tr>
    <tr>
      <td>
      <a href="https://www.microsoft.com/en-us/microsoft-365/onedrive/online-cloud-storage">OneDrive</a>
      </td>
      <td>Storing backups
      </td>
      <td>
      They offer a good price compared to other solutions
      </td>
    </tr>
    <tr>
      <td>
      <a href="https://github.com/">GitHub</a>
      </td>
      <td>Hosting code
      </td>
      <td>
      The most popular hosted Git service with many free benefits
      </td>
    </tr>
    <tr>
      <td>
      <a href="https://grafana.com/products/cloud/">Grafana</a>
      </td>
      <td>Storing logs and metrics
      </td>
      <td>
      They offer enough features for me
      </td>
    </tr>
    <tr>
      <td>
      <a href="https://www.biznetgio.com/">Biznet Gio</a>
      </td>
      <td>Routing Public Traffic
      </td>
      <td>
      One of the most affordable providers with good service in my country
      </td>
    </tr>
  </tbody>
</table>

## **Yearly Recap**

### **2025**

<table>
  <thead>
    <tr>
      <th align="center">Tech Stack</th>
      <th align="center">Wrap</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="center" valign="top">
        <a href="https://2025-homelab.hilmo.dev/">2025-homelab.hilmo.dev</a>
        <br><br>
        <img alt="2025 Tech Stack" src="./assets/2025/tech-stack.png">
      </td>
      <td align="center" valign="top">
        <a href="https://2025-homelab.hilmo.dev/">https://2025-homelab.hilmo.dev/</a>
        <br><br>
        <img alt="2025 Wrap" src="./assets/2025/wrap.png">
      </td>
    </tr>
  </tbody>
</table>

## **Hardware**

### Server

<table>
  <thead>
    <tr>
      <th>Device
      </th>
      <th>CPU
      </th>
      <th>RAM<br>
      </th>
      <th>Storage<br>
      </th>
      <th>Purpose
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Lenovo ThinkCentre M720Q
      </td>
      <td>Intel i5 8600T
      </td>
      <td>
        <span>2x16GB DDR4 SODIMM
        </span>
      </td>
      <td>1x250GB SATA SSD, 1x240GB NVMe
      </td>
      <td>Main Server
      </td>
    </tr>
    <tr>
      <td>Lenovo ThinkCentre M710Q
      </td>
      <td>Intel i5 7500T
      </td>
      <td>
        <span>1x8GB DDR4 SODIMM
        </span>
      </td>
      <td>
        <span>1x128GB SATA SSD
        </span>
      </td>
      <td>Home Assistant Server
      </td>
    </tr>
  </tbody>
</table>

## **Getting Started**
To build a similar homelab, I highly recommend starting with the official documentation for each component in the stack. Use my infra as reference only.

### **Caveats**
The infrastructure I used, especially the configuration inside the [kubernetes folder](./kubernetes/), is highly tuned for my low-resource environment. My Kubernetes cluster is also not HA (High Availability), it contains only a single Control Plane and two Agents.

1. Disabled Services: I disable several embedded K3s services to save resources. Check the list [here](./kubernetes/Taskfile.yml).
2. Custom DNS: I use a custom DNS configuration to ensure resolution availability even if half of my nodes die. Check the manifest [here](./kubernetes/infra/system/coredns.yaml).
3. Storage: I primarily use `hostPath` volumes to avoid the overhead of distributed storage solutions.
4. Scheduling: I extensively use `nodeSelector` in manifests to manually control which nodes handle high-resource workloads.