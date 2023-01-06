# NeoRV32 HAL for the ULX3S

The [NeoRV32](https://neorv32.org/) is a softcore written in
VHDL. Using [LiteX](https://github.com/enjoy-digital/litex) it was
synthesized to the [ULX3S](https://ulx3s.github.io/) FPGA.

## Synthesis

The following instruction was used to write the NeoRV32 core to the
ULX3S and generate the `neorv32.svd` file:
```
python3 -m litex_boards.targets.radiona_ulx3s  --device=LFE5U-85F \
--with-spi-sdcard --cpu-type=neorv32 --cpu-variant=full --csr-svd \
neorv32.svd --bus-standard axi-lite --build
```

The `axi-lite` bus type had to be used as the `wishbone` bus was not
working with any softcore I tried at the time.

## Automatic generation of the HAL

Following the steps indicated in [this
blog-post](https://blog.adacore.com/starting-micro-controller-ada-drivers-in-the-alire-ecosystem)
by Fabien-Chouteau we can automatically create the Hardware
Abstraction Layer from the `neorv32.svd` file.

### Bug in SVD2ADA

Version `0.1.0` of [svd2ada](https://github.com/AdaCore/svd2ada)
cannot handle the case where `MSB` takes place before `LSB`. A patch
has been created and it can be found in the following
[PR](https://github.com/AdaCore/svd2ada/pull/101).

## TODOs

Currently, the library has not "high level" abstractions that make it
easy to work with. This will come with time as it becomes more
developed.

