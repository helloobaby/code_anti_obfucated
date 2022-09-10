#include <windows.h>

namespace pe {
	//Ö»Ö§³Öx86
	PVOID RVAtoP(PVOID pBase, ULONG  rva)
	{
		IMAGE_DOS_HEADER* pmz;
		IMAGE_NT_HEADERS32* ppe;
		IMAGE_SECTION_HEADER* pSection; // section table
		int                  i;
		ULONG                size;

		pmz = (IMAGE_DOS_HEADER*)pBase;
		ppe = (IMAGE_NT_HEADERS32*)((char*)pBase + pmz->e_lfanew);

		/*
		 * Scan the section table looking for the RVA
		 */
		pSection = IMAGE_FIRST_SECTION(ppe);

		for (i = 0; i < ppe->FileHeader.NumberOfSections; i++) {

			size = pSection[i].Misc.VirtualSize ?
				pSection[i].Misc.VirtualSize : pSection[i].SizeOfRawData;

			if (rva >= pSection[i].VirtualAddress &&
				rva < pSection[i].VirtualAddress + size) {

				return (char*)pBase + pSection[i].PointerToRawData + (rva - pSection[i].VirtualAddress);
			}
		}

		return NULL;
	}
}