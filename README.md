# VM-Manager

A command-line utility for Linux to seamlessly switch between KVM and VirtualBox. It prevents virtualization conflicts by managing kernel module blacklists in real-time.

## Installation
```bash
git clone https://github.com/0x653o/vm-manager.git
cd vm-manager
chmod +x install.sh
./install.sh
```

## Usage
```bash
sudo vm-manager use kvm # for using docker or like kvm using platform

sudo vm-manager use vbox # for using vbox virtualizotion platform
```

# future work
[] make it afford various vm manager

[] make it to package
