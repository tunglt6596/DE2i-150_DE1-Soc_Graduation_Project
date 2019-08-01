# Graduation Project - IT5220 - SoICT - HUST

### Prerequisites

* I use Ubuntu 14.04 for DE2i-150. Kernel version is 4.4.0. You can check your kernel version with this command:

```
$ uname -r
``` 

* Please add this two options into grub booting commands:

```
/etc/grub.conf: vmalloc=512MB intel_iommu=off
```

* With Ubuntu 14.04, you change this line in /etc/default/grub:

```
GRUB_CMDLINE_LINUX="vmalloc=512MB intel_iommu=off"
``` 
* Then update grub:

```
sudo update-grub
```

* If you're using another kernel version, maybe you need to modify device driver. To build device devicer:

```
$ cd driver
$ make
```

* To build application:

```
$ cd app
$ make
```

### Installing

* Run quick_start.sh with sudo permission to install device driver and create device file automatically.
```
$ sudo ./quick_start.sh
```
* Or you can install device driver and create device file manually.
```
$ cd driver
$ sudo insmod altera_driver.ko
$ sudo mknod /dev/de2i150_altera c 91 1
$ sudo chmod 777 /dev/de2i150_altera
```
* Go to PCIE_Driver/app, run app.
```
$ cd app
$ sudo ./app
```
* Connect screen to FPGA VGA port, you'll see the results.

## Deployment

* Some demo videos:

```
https://www.youtube.com/watch?v=ois8go79RxM
```

```
https://www.youtube.com/watch?v=xdlIL-JmgTY
```

```
https://www.youtube.com/watch?v=PpRdL6J7s7w
```
* Document: folder Presentation/ contains my slides for this project, but only Vietnamese version.

## Versioning

* 1.0

## Authors

* Student Tung Thanh Le and lecturer Tien Duc Nguyen. 

## License

* This project is not licenced.

## Acknowledgments

* MsC Duc Tien Nguyen, who supervised and supported me in this project.

