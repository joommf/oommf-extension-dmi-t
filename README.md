[![Build Status](https://travis-ci.org/joommf/oommf-extension-dmi-t.svg?branch=master)](https://travis-ci.org/joommf/oommf-extension-dmi-t)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1196820.svg)](https://doi.org/10.5281/zenodo.1196820)

# [OOMMF](https://math.nist.gov/oommf/) extension: Dzyaloshinskii-Moriya interaction (DMI) for crystallographic classes T and O

David Cortés-Ortuño<sup>1</sup>, Marijan Beg<sup>1,2</sup>, Vanessa Nehruji<sup>3</sup>, Ryan A. Pepper<sup>1</sup>, and Hans Fangohr<sup>1,2</sup>

<sup>1</sup> Faculty of Engineering and the Environment, University of Southampton, Southampton SO17 1BJ, United Kingdom  
<sup>2</sup> European XFEL GmbH, Holzkoppel 4, 22869 Schenefeld, Germany  
<sup>3</sup> Department of Physics, University of Durham, Durham DH1 3LE, United Kingdom

## Introduction

Different Dzyaloshinskii-Moriya interaction forms can be written as different combinations of Lifshitz invariants depending on the crystallographic class of the magnetic material [1]. This mathematical formalism can also be applied to bulk DMI systems, where the lack of inversion symmetry in the magnetic system is present due to the noncentrosymmetric crystal lattice (crystallographic classes T and O). It is usually referred to the T(O) DMI as bulk DMI.

For the OOMMF extensions for other crystallographic classes, please refer to:

1. C<sub>nv</sub> - interfacial DMI ([repository](https://github.com/joommf/oommf-extension-dmi-cnv))
2. D<sub>2d</sub> - antiskyrmion DMI ([repository](https://github.com/joommf/oommf-extension-dmi-d2d))

## Energy density

The DMI energy density for the crystallographic classes T and O as a sum of Lifshitz invariants [1] is

<a href="https://www.codecogs.com/eqnedit.php?latex=\LARGE&space;w&space;&&space;=&space;D&space;\left(&space;\mathcal{L}_{zy}^{(x)}&space;&plus;&space;\mathcal{L}_{xz}^{(y)}&space;&plus;&space;\mathcal{L}_{yx}^{(z)}&space;\right)&space;=&space;D&space;\mathbf{m}&space;\cdot&space;\left(&space;\bm{\nabla}&space;\times&space;\mathbf{m}&space;\right)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\LARGE&space;w&space;&&space;=&space;D&space;\left(&space;\mathcal{L}_{zy}^{(x)}&space;&plus;&space;\mathcal{L}_{xz}^{(y)}&space;&plus;&space;\mathcal{L}_{yx}^{(z)}&space;\right)&space;=&space;D&space;\mathbf{m}&space;\cdot&space;\left(&space;\bm{\nabla}&space;\times&space;\mathbf{m}&space;\right)" title="\LARGE w & = D \left( \mathcal{L}_{zy}^{(x)} + \mathcal{L}_{xz}^{(y)} + \mathcal{L}_{yx}^{(z)} \right) = D \mathbf{m} \cdot \left( \bm{\nabla} \times \mathbf{m} \right)" /></a>

where <a href="https://www.codecogs.com/eqnedit.php?latex=D&space;[\text{J}/\text{m}^{2}]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?D&space;[\text{J}/\text{m}^{2}]" title="D [\text{J}/\text{m}^{2}]" /></a> is the DMI constant and <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" title="\mathbf{m} = \mathbf{M}/M_\text{s}" /></a> is the normalised magnetisation field.

## Periodic boundary conditions

This OOMMF extension works both with and without periodic boundary conditions (PBC). Therefore, it is possible to use the same class in either kind of mesh (`Oxs_RectangularMesh` or `Oxs_PeriodicRectangularMesh`).

## Installation

To install this extension:
1. Copy `DMI_T.cc` and `DMI_T.h` files from the `src` directory in this repository into the `app/oxs/local` directory in the OOMMF main directory.
2. Recompile OOMMF, usually by running
```
tclsh oommf.tcl pimake distclean && tclsh oommf.tcl pimake upgrade && tclsh oommf.tcl pimake
```

## Examples

Examples are provided in `.mif` files for the stabilisation of an isolated skyrmion in a confined cuboid (no periodic boundary conditions) and for the stabilisation of a skyrmion lattice in a unit cell of an infinite system (with periodic boundary conditions).

## Support

If you require support on installation or usage of this OOMMF extension as well as if you want to report a problem, you are welcome to raise an issue in our [joommf/help](https://github.com/joommf/help) repository.

## How to cite

If you use this OOMMF extension in your research, please cite it as:

1. David Cortés-Ortuño et al. paper in preparation

2. David Cortés-Ortuño, Marijan Beg, Vanessa Nehruji, Ryan A. Pepper, & Hans Fangohr. OOMMF extension: Dzyaloshinskii-Moriya interaction (DMI) for crystallographic classes T and O (Version v1.0). Zenodo. http://doi.org/10.5281/zenodo.1196820 (12 March 2018).


## License

This extension is licensed under the BSD 3-Clause "New" or "Revised" License. For details, please refer to the [LICENSE](LICENSE) file.

## Acknowledgements

This extension was developed as a part of [OpenDreamKit](http://opendreamkit.org/) – Horizon 2020 European Research Infrastructure project (676541) and the [EPSRC Programme grant on Skyrmionics (EP/N032128/1)](https://www.skyrmions.ac.uk/).

## References

[1] A. Bogdanov and D. Yablonskii. Thermodynamically stable "vortices" in magnetically ordered crystals. The mixed state of magnets. [Zh. Eksp. Teor. Fiz 95, 178 (1989)](http://www.jetp.ac.ru/cgi-bin/e/index/e/68/1/p101?a=list).
