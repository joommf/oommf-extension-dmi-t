# OOMMF extension: Dzyaloshinskii-Moriya interaction for crystallographic classes T and O

David Cortés-Ortuño<sup>1,2</sup>, Marijan Beg<sup>1,3</sup>, Martin Lang<sup>1</sup>, Vanessa Nehruji<sup>1,4</sup>, Ryan A. Pepper<sup>1</sup>, and Hans Fangohr<sup>1,5,6</sup>

<sup>1</sup> Faculty of Engineering and the Environment, University of Southampton, Southampton SO17 1BJ, United Kingdom  
<sup>2</sup> Department of Earth Sciences, Utrecht University, 3584 CD Utrecht, The Netherlands  
<sup>3</sup> Department of Earth Science and Engineering, Imperial College London, London SW7 2AZ, United Kingdom  
<sup>4</sup> Department of Physics, University of Durham, Durham DH1 3LE, United Kingdom  
<sup>5</sup> Max Planck Institute for the Structure and Dynamics of Matter, Luruper Chaussee 149, 22761 Hamburg, Germany   
<sup>6</sup> Center for Free-Electron Laser Science, Luruper Chaussee 149, 22761 Hamburg, Germany

| Description | Badge |
| ---         | ---   |
| Tests       | [![workflow](https://github.com/joommf/oommf-extension-dmi-t/actions/workflows/workflow.yml/badge.svg)](https://github.com/joommf/oommf-extension-dmi-t/actions/workflows/workflow.yml) |
| License     | [![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)  |
| DOI         | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1196820.svg)](https://doi.org/10.5281/zenodo.1196820) |

## About

Different Dzyaloshinskii-Moriya interaction forms can be written as different combinations of Lifshitz invariants depending on the crystallographic class of the magnetic material [1]. This mathematical formalism can also be applied to bulk DMI systems, where the lack of inversion symmetry in the magnetic system is present due to the noncentrosymmetric crystal lattice (crystallographic classes T and O). It is usually referred to the T(O) DMI as bulk DMI. The DMI energy density for the crystallographic classes T and O [1] is:

<a href="https://www.codecogs.com/eqnedit.php?latex=\LARGE&space;w&space;=&space;D&space;\left(&space;\mathcal{L}_{zy}^{(x)}&space;&plus;&space;\mathcal{L}_{xz}^{(y)}&space;&plus;&space;\mathcal{L}_{yx}^{(z)}&space;\right)&space;=&space;D&space;\mathbf{m}&space;\cdot&space;\left(&space;\nabla&space;\times&space;\mathbf{m}&space;\right)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\LARGE&space;w&space;=&space;D&space;\left(&space;\mathcal{L}_{zy}^{(x)}&space;&plus;&space;\mathcal{L}_{xz}^{(y)}&space;&plus;&space;\mathcal{L}_{yx}^{(z)}&space;\right)&space;=&space;D&space;\mathbf{m}&space;\cdot&space;\left(&space;\nabla&space;\times&space;\mathbf{m}&space;\right)" title="\LARGE w = D \left( \mathcal{L}_{zy}^{(x)} + \mathcal{L}_{xz}^{(y)} + \mathcal{L}_{yx}^{(z)} \right) = D \mathbf{m} \cdot \left( \nabla \times \mathbf{m} \right)" /></a>

where <a href="https://www.codecogs.com/eqnedit.php?latex=D&space;[\text{J}/\text{m}^{2}]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?D&space;[\text{J}/\text{m}^{2}]" title="D [\text{J}/\text{m}^{2}]" /></a> is the DMI constant and <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" title="\mathbf{m} = \mathbf{M}/M_\text{s}" /></a> is the normalised magnetisation field.

## Periodic boundary conditions

This OOMMF extension supports periodic boundary conditions. It works with both `Oxs_RectangularMesh` and `Oxs_PeriodicRectangularMesh`.

## Installation

1. Copy `DMI_T.cc` and `DMI_T.h` files from the `src` directory in this repository into the `app/oxs/local` directory in the OOMMF main directory.
2. Recompile OOMMF, usually by running
```
$ tclsh oommf.tcl pimake distclean && tclsh oommf.tcl pimake upgrade && tclsh oommf.tcl pimake
```

## Examples

We give examples in `.mif` files for the relaxation resulting in an isolated skyrmion state in a confined cuboid (with no periodic boundary conditions) and relaxation resulting in a skyrmion lattice in a unit cell of an infinite system (with periodic boundary conditions). Examples demonstrate the use of all three terms (with appropriately adjusted geometry).

## Other crystallographic classes

DMI extensions for other crystallographic classes are [C<sub><i>nv</i></sub>](https://github.com/joommf/oommf-extension-dmi-cnv) and [D<sub><i>2d</i></sub>](https://github.com/joommf/oommf-extension-dmi-d2d).

## Support

If you require support, have questions, want to report a bug or suggest an improvement, please raise an issue in [ubermag/help](https://github.com/ubermag/help) repository.

## Contributions

All contributions are welcome, however small they are. If you would like to contribute, please fork the repository and create a pull request. If you are unsure how to contribute, please contact us by raising an issue in [ubermag/help](https://github.com/ubermag/help) repository, and we will help you get started and assist you on the way.

## How to cite

1. David Cortés-Ortuño et al. Proposal for a micromagnetic standard problem for materials with Dzyaloshinskii–Moriya interaction. [*New J. Phys.* **20**, 113015](https://doi.org/10.1088/1367-2630/aaea1c) (2018).

2. David Cortés-Ortuño, Marijan Beg, Vanessa Nehruji, Ryan A. Pepper, & Hans Fangohr. OOMMF extension: Dzyaloshinskii-Moriya interaction (DMI) for crystallographic classes T and O (Version v1.0). Zenodo. http://doi.org/10.5281/zenodo.1196820 (12 March 2018).

## License

Licensed under the BSD 3-Clause "New" or "Revised" License. For details, please refer to the [LICENSE](LICENSE) file.

## Acknowledgements

- [OpenDreamKit](http://opendreamkit.org/) – Horizon 2020 European Research Infrastructure project (676541)

- EPSRC Programme Grant on [Skyrmionics](http://www.skyrmions.ac.uk) (EP/N032128/1)

## References

[1] A. Bogdanov and D. Yablonskii. Thermodynamically stable "vortices" in magnetically ordered crystals. The mixed state of magnets. [Zh. Eksp. Teor. Fiz 95, 178](http://www.jetp.ac.ru/cgi-bin/e/index/e/68/1/p101?a=list) (1989).
