set SynModuleInfo {
  {SRCNAME {dense_latency<ap_uint<1>, ap_fixed<16, 6, 5, 3, 0>, config2>} MODELNAME dense_latency_ap_uint_1_ap_fixed_16_6_5_3_0_config2_s RTLNAME myproject_dense_latency_ap_uint_1_ap_fixed_16_6_5_3_0_config2_s}
  {SRCNAME {relu<ap_fixed<16, 6, 5, 3, 0>, ap_ufixed<6, 0, 4, 0, 0>, relu_config4>} MODELNAME relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config4_s RTLNAME myproject_relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config4_s}
  {SRCNAME {dense_latency<ap_ufixed<6, 0, 4, 0, 0>, ap_fixed<16, 6, 5, 3, 0>, config5>} MODELNAME dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s RTLNAME myproject_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s
    SUBMODULES {
      {MODELNAME myproject_mul_6ns_6ns_11_1_0 RTLNAME myproject_mul_6ns_6ns_11_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_6ns_6s_12_1_0 RTLNAME myproject_mul_6ns_6s_12_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_6ns_5ns_10_1_0 RTLNAME myproject_mul_6ns_5ns_10_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_6ns_5s_11_1_0 RTLNAME myproject_mul_6ns_5s_11_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {relu<ap_fixed<16, 6, 5, 3, 0>, ap_ufixed<6, 0, 4, 0, 0>, relu_config7>} MODELNAME relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config7_s RTLNAME myproject_relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config7_s}
  {SRCNAME {dense_latency<ap_ufixed<6, 0, 4, 0, 0>, ap_fixed<16, 6, 5, 3, 0>, config8>} MODELNAME dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config8_s RTLNAME myproject_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config8_s}
  {SRCNAME softmax_stable<ap_fixed,ap_fixed<16,6,5,3,0>,softmax_config10> MODELNAME softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s RTLNAME myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s
    SUBMODULES {
      {MODELNAME myproject_mul_18s_18s_30_1_1 RTLNAME myproject_mul_18s_18s_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_exp_table_ROM_bkb RTLNAME myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_exp_table_ROM_bkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_invert_table_Rcud RTLNAME myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_invert_table_Rcud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1}
}
