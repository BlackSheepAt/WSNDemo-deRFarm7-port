MEMORY 
{
	flash	: ORIGIN = 0x00100000, LENGTH = 512K
	ram	: ORIGIN = 0x00200000, LENGTH = 128K
}

ENTRY(_startup)

__stack_end__ = 0x00200000 + 128K - 4;

SECTIONS 
{
	. = 0;
	startup : { *(.startup)} >flash

	prog : 
	{
                /* Non-volatile file system PDS_FF section */
                PROVIDE(__pds_ff_start = .);
                KEEP(*(.pds_ff))
                PROVIDE(__pds_ff_end = .);
 
                /* Non-volatile file system PDS_FD section */
                PROVIDE(__pds_fd_start = .);
                KEEP(*(.pds_fd))
                PROVIDE(__pds_fd_end = .);

		*(.text)
		*(.text*)
		*(.rodata)
		*(.rodata*)
		*(.glue_7)
		*(.glue_7t)
		__end_of_text__ = .;
	} >flash


	.data : 
	{
		__data_beg__ = .;
		__data_beg_src__ = __end_of_text__;
		*(.data)
		__data_end__ = .;
	} >ram AT>flash

	.bss : 
	{
		__bss_beg__ = .;
		*(.bss)
	} >ram

	/* Align here to ensure that the .bss section occupies space up to
	_end.  Align after .bss to ensure correct alignment even if the
	.bss section disappears because there are no input sections.  */
	. = ALIGN(32 / 8);
}
. = ALIGN(32 / 8);
_end = .;
_bss_end__ = . ; __bss_end__ = . ; __end__ = . ;
PROVIDE (end = .);


