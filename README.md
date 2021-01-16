# nix-configs

NixOS 20.09 deployed on an EC2 t4g.nano instance

### Creating the EC2 Instance

The EC2 Instance can be launched from the following public AMI built for instances using ARM architecture: `ami-00a02608ff45ff8f9`).

When creating the instance, ensure you allow at least 4GB of disk space. Home-Manager takes up a lot of room.

### Deploying

After launching an instance with the above AMI, the deployment of these configs has been automated with the following [bash script](https://github.com/theycallmemac/Shell-Scripts/blob/master/admin-scripts/nix-setup.sh).
