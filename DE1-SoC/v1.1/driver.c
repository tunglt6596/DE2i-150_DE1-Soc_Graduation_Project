#include <linux/fs.h>
#include <linux/module.h>                         // MOD_DEVICE_TABLE,
#include <linux/init.h>
#include <linux/pci.h>                            // pci_device_id,
#include <linux/interrupt.h>                      
#include <linux/version.h>                        // KERNEL_VERSION,
#include <linux/platform_device.h>
#include <linux/blkdev.h>
#include <linux/hdreg.h>
#include <linux/vmalloc.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/pci.h>
#include <linux/slab.h>
#include <linux/spinlock.h>
#include <linux/blkdev.h>
#include <linux/sched.h>
#include <linux/interrupt.h>
#include <linux/compiler.h>
#include <linux/workqueue.h>
#include <linux/bitops.h>
#include <linux/delay.h>
#include <linux/time.h>
#include <linux/hdreg.h>
#include <linux/dma-mapping.h>
#include <linux/completion.h>
#include <linux/scatterlist.h>
#include <linux/mm.h>  
#include <asm/io.h>
#include <asm/uaccess.h>
#include <iso646.h>

#define PAGE_SIZE						4096
#define MMAP_SIZE 						PAGE_SIZE*1024

#define MAJOR_NUMBER 					91

// ======================================
// lw_bus; DMA  addresses
#define HW_REGS_BASE        			0xff200000
#define HW_REGS_SPAN        			0x00005000 
#define DMA								0xff200000

// from datasheet
// DMA_1
#define DMA1_READ_ADD_OFFSET			0x00

// DMA_2 is at offset 0x20 in Qsys
// but these offsets are in WORDS 
// 0x20 bytes = 32 bytes = 8 words
#define DMA2_READ_ADD_OFFSET			8+0

#define IOCTL_CHANGE_ADDR 				0

#define OFFSET_0						0x000000
#define OFFSET_1						0x04B000
#define OFFSET_2						0x096000
#define OFFSET_3						0x0E1000

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Driver Fusion_IP");
MODULE_AUTHOR("TungLT");

//-- Hardware Handles
u32 __iomem * DMA_base_ptr;

//-- Char Driver Interface
static int		access_count =  0;

static int     	char_device_open    ( struct inode * , struct file *);
static int     	char_device_release ( struct inode * , struct file *);
static ssize_t 	char_device_read    ( struct file * , char *,       size_t , loff_t *);
static ssize_t 	char_device_write   ( struct file * , const char *, size_t , loff_t *);
static long    	char_device_ioctl   ( struct file * , unsigned int , unsigned long );
static int 	   	char_device_mmap	( struct file * , struct vm_area_struct *);

static struct file_operations file_opts = {
	.read = char_device_read,
	.open = char_device_open,
	.write = char_device_write,
	.release = char_device_release,
	.unlocked_ioctl = char_device_ioctl,
	.mmap = char_device_mmap
};

void __write( u32* __iomem hw_reg, u32 addr, u32 wdata )
{ 
	hw_reg[ addr ] = wdata ;
	wmb();
	return;
}

static int char_device_open(struct inode *inodep, struct file *filep) {
	int i;
	access_count++;
	filep->private_data = kmalloc(MMAP_SIZE, GFP_KERNEL);
    if (filep->private_data == NULL)
        return -1;
    for(i = 0; i < 1024 * PAGE_SIZE; i += PAGE_SIZE) {
        SetPageReserved(virt_to_page(((unsigned long)filep->private_data) + i));
    }
	printk(KERN_ALERT "altera_driver: opened %d time(s)\n", access_count);
	
	// Frame Address 1 
	u32 * copy_from_1 = (u32*)filep->private_data + OFFSET_0;
	
	// Frame Address 2
	u32 * copy_from_2 = (u32*)filep->private_data + OFFSET_1;
	
	// Update Back Buffer Address
	__write( DMA_base_ptr, DMA2_READ_ADD_OFFSET + 1, __pa(copy_from_2) );
	__write( DMA_base_ptr, DMA2_READ_ADD_OFFSET, __pa(copy_from_2) );
	
	__write( DMA_base_ptr, DMA1_READ_ADD_OFFSET + 1, __pa(copy_from_1) );
	__write( DMA_base_ptr, DMA1_READ_ADD_OFFSET, __pa(copy_from_1) );

	return 0;
}

static int char_device_release(struct inode *inodep, struct file *filep) {
	int i;
    for(i = 0; i < 1024 * PAGE_SIZE; i += PAGE_SIZE) {
        ClearPageReserved(virt_to_page(((unsigned long)filep->private_data) + i));
    }
    kfree(filep->private_data);
	printk(KERN_ALERT "altera_driver: device closed.\n");
	return 0;
}

static ssize_t char_device_read(struct file *filep, char *buf, size_t len, loff_t *off) {

	return len;
}

static ssize_t char_device_write(struct file *filep, const char *buf, size_t len, loff_t *off) {
	
	return len;
}

static long char_device_ioctl(struct file *filep,           
					   unsigned int ioctl_num,
                       unsigned long ioctl_param)
{
	switch(ioctl_num) {
		case IOCTL_CHANGE_ADDR:
			if ( !ioctl_param ) {
				// Frame Address 1 
				u32 * copy_from_1 = (u32*)filep->private_data + OFFSET_0;
				// Frame Address 2
				u32 * copy_from_2 = (u32*)filep->private_data + OFFSET_1;
				// Update Back Buffer Address
				__write( DMA_base_ptr, DMA2_READ_ADD_OFFSET + 1, __pa(copy_from_2) );
				__write( DMA_base_ptr, DMA2_READ_ADD_OFFSET, __pa(copy_from_2) );
				
				__write( DMA_base_ptr, DMA1_READ_ADD_OFFSET + 1, __pa(copy_from_1) );
				__write( DMA_base_ptr, DMA1_READ_ADD_OFFSET, __pa(copy_from_1) );
			}
			else {
				// Frame Address 1 
				u32 * copy_from_1 = (u32*)filep->private_data + OFFSET_2;
				// Frame Address 2
				u32 * copy_from_2 = (u32*)filep->private_data + OFFSET_3;
				// Update Back Buffer Address
				__write( DMA_base_ptr, DMA2_READ_ADD_OFFSET + 1, __pa(copy_from_2) );
				__write( DMA_base_ptr, DMA2_READ_ADD_OFFSET, __pa(copy_from_2) );
				
				__write( DMA_base_ptr, DMA1_READ_ADD_OFFSET + 1, __pa(copy_from_1) );
				__write( DMA_base_ptr, DMA1_READ_ADD_OFFSET, __pa(copy_from_1) );
			}
			break;
		default:
			break;
	}
	return 0;
}

static int char_device_mmap(struct file *filp, struct vm_area_struct *vma) {
	unsigned long pfn;
    printk(KERN_INFO "Fusion_IP: device mmap\n");
    pfn = virt_to_phys((void *)filp->private_data)>>PAGE_SHIFT;
    if ( remap_pfn_range( vma, vma->vm_start, pfn,
        vma->vm_end - vma->vm_start, vma->vm_page_prot ) )
    {
        printk(KERN_INFO "Fusion_IP: device mmap failed\n");
        return -EAGAIN;
    }
    printk(KERN_INFO "Fusion_IP: device mmap OK\n");
    return 0;
}

//-- Global module registration
static int __init altera_driver_init(void) {
	int t = register_chrdev(MAJOR_NUMBER, "Fusion_IP", &file_opts);

	if(t<0)
		printk(KERN_ALERT "altera_driver: error: cannot register char or pci.\n");
	else
		printk(KERN_ALERT "altera_driver: char+pci drivers registered.\n");
	
	DMA_base_ptr = ioremap(HW_REGS_BASE, HW_REGS_SPAN);
	
	return t;
}

static void __exit altera_driver_exit(void) {
	printk(KERN_ALERT "Goodbye from Fusion_IP.\n");

	unregister_chrdev(MAJOR_NUMBER, "Fusion_IP");
	
	iounmap(DMA_base_ptr);
}

module_init(altera_driver_init);
module_exit(altera_driver_exit);
