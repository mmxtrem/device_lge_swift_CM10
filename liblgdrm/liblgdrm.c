/*
 * wingrime (c) 2011 stud for liblgedrm
 */

#define LOG_TAG "lgdrm-stud"

#include <fcntl.h>
#include <errno.h>
#include <dirent.h>
#include <math.h>
#include <poll.h>

#include <cutils/log.h>
#include <cutils/atomic.h>


/*****************************************************************************/
/*

As most parameters comes from regs not from stack we can strip it
*/


int drmUtilSave2File()
{
 ALOGE(__func__);
  return 0;
}



int drmLibFsRemove(const char * pusFilename)
{
ALOGE("%s - %s",__func__,pusFilename);
	return 0;
}


int drmLibFsClose(void* hFile)
{
 ALOGE(__func__);	  
	return 0;	

}

void *drmLibFsOpen(const char * pusFilename, int nAccessMode)
{
    ALOGE("%s - %s",__func__,pusFilename);
	return 0;

}


int drmLibFsRead(void* hFile, unsigned char *pucBuf, unsigned int uSize)
{
 ALOGE(__func__);
		return -1;


}

int drmLibFsFileExist(const char * pusFilename)
{
  ALOGE("%s - %s",__func__,pusFilename);
  //file not exists any time
		return 0;
}


int _DRM_ImportClose ()
{
 ALOGE(__func__);

return 0 ;
}
int _DRM_ImportOpen()
{
 ALOGE(__func__);

return 0 ;
}

int _DRM_IsDRM()
{
 ALOGE(__func__);

return 0 ;
}

int _DRM_IsSettingsAvailable()
{
 ALOGE(__func__);

return 0 ;
}
int _DRM_ManageCERT ()
{
 ALOGE(__func__);

return 0 ;
}
int start ()
{
 ALOGE(__func__);

return 0 ;
}
int __aeabi_ulcmp(unsigned long long l1, unsigned long long l2) 
{
return (l1 == l2);
}
