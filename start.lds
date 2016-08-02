ENTRY(_start)
SECTIONS
{
	. = 0x40008000;
	.text :
	{
		*(.text)
	}
	.data :
	{
		*(.data)
	}
	.bss :
	{
		*(.bss)
	}
}

