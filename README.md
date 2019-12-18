Used to deploy jamesmcdermott.ie and some other services I use.

Rebuild with the command:

```
nixos-rebuild switch -I nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos/nixpkgs -I nixos-config=/etc/nixos/hosts/kyoto/configuration.nix
```
