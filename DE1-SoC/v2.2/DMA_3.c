///////////////////////////////////////
// DMA test
// Send data from HPS on-chip memory
// to FPGA SRAM
// compile with
// gcc DMA_3.c -o dma  -O3
//
// based on a design from
// https://github.com/robertofem/CycloneVSoC-examples/blob/master/Linux-applications/DMA_transfer_FPGA_DMAC/README.md
//
///////////////////////////////////////
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/ipc.h> 
#include <sys/shm.h> 
#include <sys/mman.h>
#include <sys/time.h> 
#include <math.h> 

// Page mmap
#define PAGE_SIZE			4096
#define MMAP_SIZE			PAGE_SIZE*1024

// Image Information
#define IMAGE_SIZE			640*480
#define IMAGE_WIDTH			640
#define IMAGE_HEIGHT		480

#define OFFSET_0			0x000000
#define OFFSET_1			0x04B000
#define OFFSET_2			0x096000
#define OFFSET_3			0x0E1000

#define IOCTL_CHANGE_ADDR 	0

int dev; 

int main(void)
{
	// Declare volatile pointers to I/O registers (volatile 	
	// means that IO load and store instructions will be used 	
	// to access these pointer locations, 
	// instead of regular memory loads and stores)  
 
	dev = open("/dev/fusion_ip", O_RDWR);
	if(dev < 0)
    {
        perror("Open device file failed");
        return -1;
    }

	unsigned int *mem = NULL;
	int i;
	
	mem = mmap(NULL, MMAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, dev, 0);
	if (mem == MAP_FAILED)
    {
        perror("mmap operation failed");
        return -1;
    }

	FILE *fi1 = NULL, *fi2 = NULL;
	
	int n = 1325;
	char buf[30];
	
	while(1)
	{
		i = 1;
		for (; i <= n; i++)  
		{
			// read frame from video 1
			snprintf(buf, 30, "./TRI_B1/ir_%d.bin", i);
			fi1 = fopen(buf, "rb");
			fread(mem+OFFSET_0, sizeof(unsigned char), IMAGE_SIZE, fi1);
			fclose(fi1);
			
			// read frame from video 2
			snprintf(buf, 30, "./TRI_B1/vis_%d.bin", i);
			fi2 = fopen(buf, "rb");
			fread(mem+OFFSET_1, sizeof(unsigned char), IMAGE_SIZE, fi2);
			fclose(fi2);
			
			// change dma frame address  
			ioctl(dev, IOCTL_CHANGE_ADDR, 0);
			system("clear");
			usleep(10000);
			
			// read frame from video 1
			snprintf(buf, 30, "./TRI_B1/ir_%d.bin", i);
			fi1 = fopen(buf, "rb");
			fread(mem+OFFSET_2, sizeof(unsigned char), IMAGE_SIZE, fi1);
			fclose(fi1);
			
			// read frame from video 2
			snprintf(buf, 30, "./TRI_B1/vis_%d.bin", i);
			fi2 = fopen(buf, "rb");
			fread(mem+OFFSET_3, sizeof(unsigned char), IMAGE_SIZE, fi2);
			fclose(fi2);
			
			// change dma frame address 
			ioctl(dev, IOCTL_CHANGE_ADDR, 1);
			system("clear");
			usleep(10000);
		}
	}
	
	close(dev);
} // end main

// ================================================
#pragma GCC optimize("O0") 
void memcpy_0(int* dest, int* src, int count){
	memcpy((void*)dest, (const void*)src, count);
}
#pragma GCC optimize("O3") 
//////////////////////////////////////////////////////////////////
/// end /////////////////////////////////////