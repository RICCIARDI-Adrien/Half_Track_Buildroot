# Half-track Buildroot

Heavily tailored Buildroot images for specific targets.

## Getting sources

Some project dependencies are used as git submodules.  
Either clone the repository and the submodules all in the row :
```
git clone --recurse-submodules https://github.com/RICCIARDI-Adrien/Half_Track_Buildroot
```
Or clone submodules right after having cloned the repository :
```
git clone https://github.com/RICCIARDI-Adrien/Half_Track_Buildroot
cd Half_Track_Buildroot
git submodule init
git submodule update
cd ..
```

## Building

The following configurations are available :
| Supported device                                                                                         | Tested on following device     | Configuration name                  |
| -------------------------------------------------------------------------------------------------------- | ------------------------------ | ----------------------------------- |
| **NOT YET AVAILABLE** [Acer Aspire One](https://en.wikipedia.org/wiki/Acer_Aspire_One)                   | Acer Aspire One D150-0Bk       | acer_aspire_one_defconfig           |
| [Raspberry Pi 3B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus) (full 32-bit image) | Raspberry Pi Compute Module 3+ | raspberry_pi_3_b+_32_bits_defconfig |
| [Raspberry Pi 3B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus) (full 64-bit image) | Raspberry Pi Compute Module 3+ | raspberry_pi_3_b+_64_bits_defconfig |
| [Raspberry Pi 4](https://www.raspberrypi.org/products/raspberry-pi-4-model-b) (full 32-bit image)        | Raspberry Pi 4 model B         | raspberry_pi_4_b_32_bits_defconfig  |

To build a specific configuration, execute the following commands from the repository root directory. Replace `<configuration name>` by the name in the table.
```
cd Half_Track_Buildroot/buildroot
make distclean
make BR2_EXTERNAL=$(realpath ..)/half_track <configuration name>
make
```

**Make sure to clean Buildroot previous build if you change configuration.**
