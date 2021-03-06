#!/bin/bash

set -euo pipefail

source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/env.sh"

if [[ ! -f "$dir_base/$package_source" ]]; then
    echo "[WARN ] Missing source file: $dir_base/$package_source, downloading now."
    wget -O "$dir_base/$package_source" "https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-${version_kernel}.tar.xz"
fi
