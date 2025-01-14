#!/bin/sh
# Shared definitions for buildroot scripts

# The defconfig from the buildroot directory we use for qemu builds
QEMU_DEFCONFIG=configs/qemu_aarch64_virt_defconfig

# The defconfig from the buildroot directory we use for Raspberry Pi builds
RPI_DEFCONFIG=configs/raspberrypi3_64_defconfig

# The place we store customizations to the qemu configuration
MODIFIED_QEMU_DEFCONFIG=base_external/configs/aesd_qemu_defconfig

# The place we store customizations to the Raspberry Pi configuration
MODIFIED_RPI_DEFCONFIG=base_external/configs/aesd_rpi_defconfig

# The defconfig from the buildroot directory we use for the project
#AESD_DEFAULT_DEFCONFIG=${QEMU_DEFCONFIG}
#AESD_MODIFIED_DEFCONFIG=${MODIFIED_QEMU_DEFCONFIG}
#AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}

# The defconfig from the buildroot directory we use for the project
AESD_DEFAULT_DEFCONFIG=${RPI_DEFCONFIG}

# The custom modified defconfig for this project
AESD_MODIFIED_DEFCONFIG=${MODIFIED_RPI_DEFCONFIG}

# The relative path to the modified defconfig file within the buildroot tree
AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}