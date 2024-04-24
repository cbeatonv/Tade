/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xcb73ee62 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Documents and Settings/lester/Escritorio/Contador/Signal_circuit.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_4004989202_2948600957_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;

LAB0:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2052);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 684U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 960U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t2 = (t0 + 2104);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    *((int *)t12) = t15;
    xsi_driver_first_trans_fast(t2);

LAB12:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(25, ng0);
    t4 = (t0 + 2104);
    t11 = (t4 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((int *)t14) = 1;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

LAB11:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 960U);
    t5 = *((char **)t2);
    t15 = *((int *)t5);
    t6 = (t15 < 50000000);
    if (t6 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1052U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t1);
    t2 = (t0 + 2140);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2104);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t11 = *((char **)t8);
    *((int *)t11) = 1;
    xsi_driver_first_trans_fast(t2);

LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 960U);
    t8 = *((char **)t2);
    t16 = *((int *)t8);
    t17 = (t16 + 1);
    t2 = (t0 + 2104);
    t11 = (t2 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((int *)t14) = t17;
    xsi_driver_first_trans_fast(t2);
    goto LAB15;

}

static void work_a_4004989202_2948600957_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2176);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 2060);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_4004989202_2948600957_init()
{
	static char *pe[] = {(void *)work_a_4004989202_2948600957_p_0,(void *)work_a_4004989202_2948600957_p_1};
	xsi_register_didat("work_a_4004989202_2948600957", "isim/tb_isim_beh.exe.sim/work/a_4004989202_2948600957.didat");
	xsi_register_executes(pe);
}
