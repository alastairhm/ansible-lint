# ansible-lint

## A Docker image for `ansible-lint`

This repository provides an automated build for a lean [ansible-lint](https://ansible-lint.readthedocs.io/) Docker image.

## Usage

To lint the files `one.yaml` and `two.yaml` in your current directory:

From GitHub Packages

```bash
docker run --rm -ti -v $(pwd):/workdir ghcr.io/alastairhm/ansible-lint ./one.yaml ./two.yaml
```

Setup an alias

```bash
alias yl 'docker run --rm -ti -v "$PWD:/workdir" ghcr.io/alastairhm/ansible-lint'
```

```text
          _    _ __  __ 
    /\   | |  | |  \/  | Email   : alastair@montgomery.me.uk
   /  \  | |__| | \  / | Web     : https://blog.0x32.co.uk/
  / /\ \ |  __  | |\/| | Twitter : @alastair_hm
 / ____ \| |  | | |  | |
/_/    \_\_|  |_|_|  |_| (c) 2023
```
