// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package rv_timer_reg_pkg;

  // Param list
  parameter int N_HARTS = 1;
  parameter int N_TIMERS = 1;
  parameter int NumAlerts = 1;

  // Address widths within the block
  parameter int BlockAw = 9;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    logic        q;
    logic        qe;
  } rv_timer_reg2hw_alert_test_reg_t;

  typedef struct packed {
    logic        q;
  } rv_timer_reg2hw_ctrl_mreg_t;

  typedef struct packed {
    logic        q;
  } rv_timer_reg2hw_intr_enable0_mreg_t;

  typedef struct packed {
    logic        q;
  } rv_timer_reg2hw_intr_state0_mreg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } rv_timer_reg2hw_intr_test0_mreg_t;

  typedef struct packed {
    struct packed {
      logic [11:0] q;
    } prescale;
    struct packed {
      logic [7:0]  q;
    } step;
  } rv_timer_reg2hw_cfg0_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } rv_timer_reg2hw_timer_v_lower0_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } rv_timer_reg2hw_timer_v_upper0_reg_t;

  typedef struct packed {
    logic [31:0] q;
    logic        qe;
  } rv_timer_reg2hw_compare_lower0_0_reg_t;

  typedef struct packed {
    logic [31:0] q;
    logic        qe;
  } rv_timer_reg2hw_compare_upper0_0_reg_t;

  typedef struct packed {
    logic        d;
    logic        de;
  } rv_timer_hw2reg_intr_state0_mreg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } rv_timer_hw2reg_timer_v_lower0_reg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } rv_timer_hw2reg_timer_v_upper0_reg_t;

  // Register -> HW type
  typedef struct packed {
    rv_timer_reg2hw_alert_test_reg_t alert_test; // [156:155]
    rv_timer_reg2hw_ctrl_mreg_t [0:0] ctrl; // [154:154]
    rv_timer_reg2hw_intr_enable0_mreg_t [0:0] intr_enable0; // [153:153]
    rv_timer_reg2hw_intr_state0_mreg_t [0:0] intr_state0; // [152:152]
    rv_timer_reg2hw_intr_test0_mreg_t [0:0] intr_test0; // [151:150]
    rv_timer_reg2hw_cfg0_reg_t cfg0; // [149:130]
    rv_timer_reg2hw_timer_v_lower0_reg_t timer_v_lower0; // [129:98]
    rv_timer_reg2hw_timer_v_upper0_reg_t timer_v_upper0; // [97:66]
    rv_timer_reg2hw_compare_lower0_0_reg_t compare_lower0_0; // [65:33]
    rv_timer_reg2hw_compare_upper0_0_reg_t compare_upper0_0; // [32:0]
  } rv_timer_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    rv_timer_hw2reg_intr_state0_mreg_t [0:0] intr_state0; // [67:66]
    rv_timer_hw2reg_timer_v_lower0_reg_t timer_v_lower0; // [65:33]
    rv_timer_hw2reg_timer_v_upper0_reg_t timer_v_upper0; // [32:0]
  } rv_timer_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] RV_TIMER_ALERT_TEST_OFFSET = 9'h 0;
  parameter logic [BlockAw-1:0] RV_TIMER_CTRL_OFFSET = 9'h 4;
  parameter logic [BlockAw-1:0] RV_TIMER_INTR_ENABLE0_OFFSET = 9'h 100;
  parameter logic [BlockAw-1:0] RV_TIMER_INTR_STATE0_OFFSET = 9'h 104;
  parameter logic [BlockAw-1:0] RV_TIMER_INTR_TEST0_OFFSET = 9'h 108;
  parameter logic [BlockAw-1:0] RV_TIMER_CFG0_OFFSET = 9'h 10c;
  parameter logic [BlockAw-1:0] RV_TIMER_TIMER_V_LOWER0_OFFSET = 9'h 110;
  parameter logic [BlockAw-1:0] RV_TIMER_TIMER_V_UPPER0_OFFSET = 9'h 114;
  parameter logic [BlockAw-1:0] RV_TIMER_COMPARE_LOWER0_0_OFFSET = 9'h 118;
  parameter logic [BlockAw-1:0] RV_TIMER_COMPARE_UPPER0_0_OFFSET = 9'h 11c;

  // Reset values for hwext registers and their fields
  parameter logic [0:0] RV_TIMER_ALERT_TEST_RESVAL = 1'h 0;
  parameter logic [0:0] RV_TIMER_ALERT_TEST_FATAL_FAULT_RESVAL = 1'h 0;
  parameter logic [0:0] RV_TIMER_INTR_TEST0_RESVAL = 1'h 0;

  // Register index
  typedef enum int {
    RV_TIMER_ALERT_TEST,
    RV_TIMER_CTRL,
    RV_TIMER_INTR_ENABLE0,
    RV_TIMER_INTR_STATE0,
    RV_TIMER_INTR_TEST0,
    RV_TIMER_CFG0,
    RV_TIMER_TIMER_V_LOWER0,
    RV_TIMER_TIMER_V_UPPER0,
    RV_TIMER_COMPARE_LOWER0_0,
    RV_TIMER_COMPARE_UPPER0_0
  } rv_timer_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] RV_TIMER_PERMIT [10] = '{
    4'b 0001, // index[0] RV_TIMER_ALERT_TEST
    4'b 0001, // index[1] RV_TIMER_CTRL
    4'b 0001, // index[2] RV_TIMER_INTR_ENABLE0
    4'b 0001, // index[3] RV_TIMER_INTR_STATE0
    4'b 0001, // index[4] RV_TIMER_INTR_TEST0
    4'b 0111, // index[5] RV_TIMER_CFG0
    4'b 1111, // index[6] RV_TIMER_TIMER_V_LOWER0
    4'b 1111, // index[7] RV_TIMER_TIMER_V_UPPER0
    4'b 1111, // index[8] RV_TIMER_COMPARE_LOWER0_0
    4'b 1111  // index[9] RV_TIMER_COMPARE_UPPER0_0
  };

endpackage
