# Detailed Installation Instructions

Last Tested: 2017/06/19





### Supported Operating Systems
Ubuntu (tested on 16.04 LTS)


### Installation Instructions

PeGaSUS is configured with CMake with the following command:
```sh
$ cmake -D CMAKE_TOOLCHAIN_FILE=/path_to_pegasus_root/cmake/toolchains/your_toolchain.cmake /path_to_pegasus_root
```
	- A default toolchain file is available in the directory specified above; slight modifications may be required for
	  your specific build.





Install Boost (http://www.boost.org/): (Likely replace with googletest ToBeDeleted)
- Extract files

Install Eigen (http://eigen.tuxfamily.org/index.php?title=Main_Page):
- Extract files


