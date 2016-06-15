# NERC Airborne Research Facility Data Analysis Node (NERC-ARF-DAN) LAStools Fork #

This is a fork of LAStools (https://github.com/LAStools/LAStools) used for installation
on our Fedora Linux systems. The following changes have been made to makefiles

* Added an 'install' option
* Build as a shared library, renamed as liblaslib to avoid conflicts with libLAS.

Unless you are installing LAStools on a NERC-ARF system or using software developed
by NERC-ARF which depends on our patched version of LAStools (e.g., [LAG](https://github.com/arsf/lag))
it is recommended you use the official version.

