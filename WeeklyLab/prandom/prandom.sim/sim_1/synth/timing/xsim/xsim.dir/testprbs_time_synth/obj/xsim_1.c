/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_16(char*, char *);
extern void execute_954(char*, char *);
extern void execute_955(char*, char *);
extern void execute_956(char*, char *);
extern void execute_957(char*, char *);
extern void execute_958(char*, char *);
extern void execute_959(char*, char *);
extern void execute_960(char*, char *);
extern void execute_961(char*, char *);
extern void execute_962(char*, char *);
extern void execute_963(char*, char *);
extern void execute_964(char*, char *);
extern void execute_965(char*, char *);
extern void execute_966(char*, char *);
extern void execute_967(char*, char *);
extern void execute_968(char*, char *);
extern void execute_969(char*, char *);
extern void execute_970(char*, char *);
extern void execute_158(char*, char *);
extern void execute_159(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void execute_162(char*, char *);
extern void execute_19(char*, char *);
extern void execute_163(char*, char *);
extern void execute_23(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_258(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_213(char*, char *);
extern void execute_214(char*, char *);
extern void execute_215(char*, char *);
extern void execute_216(char*, char *);
extern void execute_217(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_220(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_224(char*, char *);
extern void execute_225(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_1(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_2(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_367(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_368(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_369(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_370(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_371(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_372(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_373(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_374(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_375(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_376(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_377(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_378(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_379(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_380(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_381(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_382(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_383(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_384(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_385(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_386(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_387(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_388(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_389(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_390(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_27(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_28(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_29(char*, char *);
extern void timing_checker_condition_m_33399bd20867c86f_88d77034_30(char*, char *);
extern void execute_246(char*, char *);
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_254(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void execute_304(char*, char *);
extern void execute_348(char*, char *);
extern void execute_349(char*, char *);
extern void execute_350(char*, char *);
extern void execute_394(char*, char *);
extern void execute_395(char*, char *);
extern void execute_396(char*, char *);
extern void execute_440(char*, char *);
extern void execute_441(char*, char *);
extern void execute_442(char*, char *);
extern void execute_486(char*, char *);
extern void execute_487(char*, char *);
extern void execute_488(char*, char *);
extern void execute_533(char*, char *);
extern void execute_534(char*, char *);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_537(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_489(char*, char *);
extern void execute_583(char*, char *);
extern void execute_584(char*, char *);
extern void execute_585(char*, char *);
extern void execute_629(char*, char *);
extern void execute_630(char*, char *);
extern void execute_631(char*, char *);
extern void execute_675(char*, char *);
extern void execute_676(char*, char *);
extern void execute_677(char*, char *);
extern void execute_721(char*, char *);
extern void execute_722(char*, char *);
extern void execute_723(char*, char *);
extern void execute_767(char*, char *);
extern void execute_768(char*, char *);
extern void execute_769(char*, char *);
extern void execute_813(char*, char *);
extern void execute_814(char*, char *);
extern void execute_815(char*, char *);
extern void execute_859(char*, char *);
extern void execute_860(char*, char *);
extern void execute_861(char*, char *);
extern void execute_905(char*, char *);
extern void execute_906(char*, char *);
extern void execute_907(char*, char *);
extern void execute_951(char*, char *);
extern void execute_952(char*, char *);
extern void execute_953(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_239(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_240(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_272(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_273(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_274(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_275(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_276(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_313(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_314(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_315(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_347(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_377(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_378(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_379(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_410(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_411(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_441(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_442(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_443(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_473(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_474(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_475(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_505(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_507(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_537(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_538(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_539(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_569(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_570(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_571(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_293(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_357(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_389(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_421(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_453(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_517(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_549(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_581(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[245] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_154, (funcp)execute_155, (funcp)execute_16, (funcp)execute_954, (funcp)execute_955, (funcp)execute_956, (funcp)execute_957, (funcp)execute_958, (funcp)execute_959, (funcp)execute_960, (funcp)execute_961, (funcp)execute_962, (funcp)execute_963, (funcp)execute_964, (funcp)execute_965, (funcp)execute_966, (funcp)execute_967, (funcp)execute_968, (funcp)execute_969, (funcp)execute_970, (funcp)execute_158, (funcp)execute_159, (funcp)vlog_timingcheck_execute_0, (funcp)execute_162, (funcp)execute_19, (funcp)execute_163, (funcp)execute_23, (funcp)execute_165, (funcp)execute_166, (funcp)execute_167, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_256, (funcp)execute_257, (funcp)execute_258, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_213, (funcp)execute_214, (funcp)execute_215, (funcp)execute_216, (funcp)execute_217, (funcp)execute_218, (funcp)execute_219, (funcp)execute_220, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_222, (funcp)execute_223, (funcp)execute_224, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_1, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_2, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_367, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_368, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_369, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_370, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_371, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_372, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_373, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_374, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_375, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_376, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_377, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_378, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_379, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_380, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_381, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_382, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_383, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_384, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_385, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_386, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_387, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_388, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_389, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_390, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_27, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_28, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_29, (funcp)timing_checker_condition_m_33399bd20867c86f_88d77034_30, (funcp)execute_246, (funcp)execute_251, (funcp)execute_252, (funcp)execute_253, (funcp)execute_254, (funcp)execute_302, (funcp)execute_303, (funcp)execute_304, (funcp)execute_348, (funcp)execute_349, (funcp)execute_350, (funcp)execute_394, (funcp)execute_395, (funcp)execute_396, (funcp)execute_440, (funcp)execute_441, (funcp)execute_442, (funcp)execute_486, (funcp)execute_487, (funcp)execute_488, (funcp)execute_533, (funcp)execute_534, (funcp)execute_535, (funcp)execute_536, (funcp)execute_537, (funcp)execute_538, (funcp)execute_539, (funcp)execute_93, (funcp)execute_94, (funcp)execute_489, (funcp)execute_583, (funcp)execute_584, (funcp)execute_585, (funcp)execute_629, (funcp)execute_630, (funcp)execute_631, (funcp)execute_675, (funcp)execute_676, (funcp)execute_677, (funcp)execute_721, (funcp)execute_722, (funcp)execute_723, (funcp)execute_767, (funcp)execute_768, (funcp)execute_769, (funcp)execute_813, (funcp)execute_814, (funcp)execute_815, (funcp)execute_859, (funcp)execute_860, (funcp)execute_861, (funcp)execute_905, (funcp)execute_906, (funcp)execute_907, (funcp)execute_951, (funcp)execute_952, (funcp)execute_953, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_110, (funcp)transaction_111, (funcp)transaction_112, (funcp)transaction_142, (funcp)transaction_143, (funcp)transaction_144, (funcp)transaction_174, (funcp)transaction_175, (funcp)transaction_176, (funcp)transaction_206, (funcp)transaction_207, (funcp)transaction_208, (funcp)transaction_238, (funcp)transaction_239, (funcp)transaction_240, (funcp)transaction_271, (funcp)transaction_272, (funcp)transaction_273, (funcp)transaction_274, (funcp)transaction_275, (funcp)transaction_276, (funcp)transaction_277, (funcp)transaction_313, (funcp)transaction_314, (funcp)transaction_315, (funcp)transaction_345, (funcp)transaction_346, (funcp)transaction_347, (funcp)transaction_377, (funcp)transaction_378, (funcp)transaction_379, (funcp)transaction_409, (funcp)transaction_410, (funcp)transaction_411, (funcp)transaction_441, (funcp)transaction_442, (funcp)transaction_443, (funcp)transaction_473, (funcp)transaction_474, (funcp)transaction_475, (funcp)transaction_505, (funcp)transaction_506, (funcp)transaction_507, (funcp)transaction_537, (funcp)transaction_538, (funcp)transaction_539, (funcp)transaction_569, (funcp)transaction_570, (funcp)transaction_571, (funcp)transaction_90, (funcp)transaction_122, (funcp)transaction_154, (funcp)transaction_186, (funcp)transaction_218, (funcp)transaction_250, (funcp)transaction_293, (funcp)transaction_325, (funcp)transaction_357, (funcp)transaction_389, (funcp)transaction_421, (funcp)transaction_453, (funcp)transaction_485, (funcp)transaction_517, (funcp)transaction_549, (funcp)transaction_581};
const int NumRelocateId= 245;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testprbs_time_synth/xsim.reloc",  (void **)funcTab, 245);
	iki_vhdl_file_variable_register(dp + 122944);
	iki_vhdl_file_variable_register(dp + 123000);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testprbs_time_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/testprbs_time_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 127976, dp + 128496, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 128032, dp + 128720, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/testprbs_time_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testprbs_time_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testprbs_time_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
