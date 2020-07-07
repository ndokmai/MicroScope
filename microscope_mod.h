/*
 * Author: Dimitrios Skarlatos
 * Contact: skarlat2@illinois.edu - http://skarlat2.web.engr.illinois.edu/
 *
 * The microscope_mod is a kernel module that can be used to perform microarchitectural
 * replay attacks using page faults.
 *
 * More details in :
 * MicroScope: Enabling Microarchitectural Replay Attacks.
 * Dimitrios Skarlatos, Mengjia Yan, Bhargava Gopireddy, Read Sprabery, Josep Torrellas,
 * and Christopher W. Fletcher. Proceedings of the 46th Intl. Symposium on Computer
 * Architecture (ISCA), Phoenix, USA, June 2019.
 */

#ifndef CHARDEV_H
#define CHARDEV_H

#include <linux/ioctl.h>

#define MAJOR_NUM 1313

#define IOCTL_SET_MSG _IOR(MAJOR_NUM, 0, char *)

#define IOCTL_SET_VICTIM_PID _IOR(MAJOR_NUM, 1, char *)

#define IOCTL_SET_NUKE_ADDR _IOR(MAJOR_NUM, 2, char *)

#define IOCTL_SET_MONITOR_ADDR _IOR(MAJOR_NUM, 3, char *)

#define IOCTL_PREP_PF _IOR(MAJOR_NUM, 4, char *)

#define DEVICE_NAME "nuke_channel"

enum call_type { MSG, VICTIM_PID, NUKE_ADDR, MONITOR_ADDR, PF };

#endif
