## =============================================================================
## Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved Worldwide.
## Amazon Confidential information
## Restricted NDA Material
## =============================================================================

+define+IES_SIM

+libext+.v
+libext+.sv

-y ${CL_ROOT}/design
-y ${SH_LIB_DIR}
-y ${SH_INF_DIR}

+incdir+${CL_ROOT}/verif/sv
+incdir+${SH_LIB_DIR}
+incdir+${SH_INF_DIR}

${CL_ROOT}/design/cl_bfm_defines.vh
${CL_ROOT}/design/cl_bfm.sv
${TB_HOME}/verif/sv/cl_bfm_pkg.sv
${TB_HOME}/design/soma_uvm/activeMaster512.v
${TB_HOME}/design/soma_uvm/activeSlave512.v
${TB_HOME}/design/soma_uvm/passiveMaster512.v

-f ${HDK_COMMON_DIR}/verif/tb/filelists/tb.${SIMULATOR}.f

${TEST_NAME}
