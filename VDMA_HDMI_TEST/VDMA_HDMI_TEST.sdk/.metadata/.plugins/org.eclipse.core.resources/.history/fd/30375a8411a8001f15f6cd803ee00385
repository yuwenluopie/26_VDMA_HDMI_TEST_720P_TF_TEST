/////////////
//www.hellofpga.com
/////////////
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "ff.h"
#include "sleep.h"



void load_sd_bmp(u8 *frame,unsigned char mode);

void load_sd_bmp(u8 *frame,unsigned char mode)
{
	static 	FATFS fatfs;
	FIL 	fil;
	u8		bmp_head[54];
	UINT 	*bmp_width,*bmp_height;
	UINT 	br;
	int 	i;

	//挂载文件系统
	f_mount(&fatfs,"",1);
	//打开文件
	if(mode==0)f_open(&fil,"R.bmp",FA_READ);
	else f_open(&fil,"D.bmp",FA_READ);
	//移动文件读写指针到文件开头
	f_lseek(&fil,0);
	//读取BMP文件头
	f_read(&fil,bmp_head,54,&br);

	//打印BMP图片分辨率和大小
	bmp_width  = (UINT *)(bmp_head + 0x12);
	bmp_height = (UINT *)(bmp_head + 0x16);
	//读出图片，写入DDR
	for(i=*bmp_height-1;i>=0;i--){
		f_read(&fil,frame+i*(*bmp_width)*3,(*bmp_width)*3,&br);
	}

	//关闭文件
	f_close(&fil);

	Xil_DCacheFlush();     //刷新Cache，数据更新至DDR3中
}


#define H_STRIDE	1280
#define H_ACTIVE	1280
#define V_ACTIVE	720

#define VDMA_BASEADDR	XPAR_AXI_VDMA_0_BASEADDR

#define VIDEO_BASEADDR0 0x01000000//帧存0地址
#define VIDEO_BASEADDR1 0x02000000//帧存1地址

void VDMA_init(){
	Xil_Out32((VDMA_BASEADDR + 0x000), 0x3); 				// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR0); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR0); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x064), VIDEO_BASEADDR0); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x058), (H_STRIDE*3)); 		// h offset (H_STRIDE * 3) bytes
	Xil_Out32((VDMA_BASEADDR + 0x054), (H_ACTIVE*3)); 		// h size (H_ACTIVE * 3) bytes
	Xil_Out32((VDMA_BASEADDR + 0x050),  V_ACTIVE); 			// v size (V_ACTIVE)
}

int main(void)
{
		printf(1);
		load_sd_bmp((u8*)VIDEO_BASEADDR0,0);
		printf(2);
		load_sd_bmp((u8*)VIDEO_BASEADDR1,1);
		printf(3);
		VDMA_init();

	while(1){

		Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR0); 	// start address
		Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR0); 	// start address
		Xil_Out32((VDMA_BASEADDR + 0x064), VIDEO_BASEADDR0); 	// start address

		Xil_Out32((VDMA_BASEADDR + 0x058), (H_STRIDE*3)); 		// h offset (H_STRIDE * 3) bytes
		Xil_Out32((VDMA_BASEADDR + 0x054), (H_ACTIVE*3)); 		// h size (H_ACTIVE * 3) bytes
		Xil_Out32((VDMA_BASEADDR + 0x050),  V_ACTIVE); 			// v size (V_ACTIVE)
		printf(4);
		sleep(1);

		Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR1); 	// start address
		Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR1); 	// start address
		Xil_Out32((VDMA_BASEADDR + 0x064), VIDEO_BASEADDR1); 	// start address
		Xil_Out32((VDMA_BASEADDR + 0x058), (H_STRIDE*3)); 		// h offset (H_STRIDE * 3) bytes
		Xil_Out32((VDMA_BASEADDR + 0x054), (H_ACTIVE*3)); 		// h size (H_ACTIVE * 3) bytes
		Xil_Out32((VDMA_BASEADDR + 0x050),  V_ACTIVE); 			// v size (V_ACTIVE)
		sleep(1);
		printf(5);
	}
    return 0;
}









