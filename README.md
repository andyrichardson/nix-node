# About

All releases of nodejs built and accessible under a single flake.

It's like `nvm` but for nix! 

## Setup

### Setting up the registry

Via the CLI **TODO**

```sh
nix registry add node 'github:andyrichardson/nix-node'
```

In configuration.nix **TODO**

```nix
nix.registry."node".flake = 'github:andyrichardson/nix-node';
```

### Setting up the binary cache

Via the CLI **TODO**

```sh
cachix use nix-node
```

In configuration.nix **TODO**

```nix
nix.binaryCaches = [ "https://cache.nixos.org/" "https://nix-node.cachix.org/" ]
```

## Usage

Using latest major releases **TODO**

```sh
nix shell nodejs#16
```

Using explicit release versions **TODO**

```sh
nix shell nodejs#16.3.0
```

## Contributing

Open to contributions for supporting more versions, architectures, etc.