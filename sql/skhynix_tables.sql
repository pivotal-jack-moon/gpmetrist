CREATE TABLE inl_repwfmetr_inf
(
      alias_lot_id character varying(50) NOT NULL,
      wf_id character varying(50) NOT NULL,
      oper_id character varying(50) NOT NULL,
      lot_cd character varying(50) NOT NULL,
      lot_id character varying(50) NOT NULL,
      fab_id character varying(50) NOT NULL,
      end_tm character varying(14),
      param_nm character varying(20),
      crt_user_id character varying(50),
      target_load_tm character varying(14),
      oper_det_desc character varying(4000),
      base_dt character varying(8),
      base_week character varying(6),
      base_month character varying(6),
      prod_id character varying(50),
      inl_main_eqp_id character varying(50),
      inl_meas_eqp_id character varying(50),
      inl_recipe_id character varying(200),
      inl_reticle_id character varying(50),
      inl_chamb_id character varying(50),
      inl_sub_chamb_id character varying(50),
      inl_chuck_id character varying(50),
      inl_start_chuck_id character varying(50),
      inl_zone_cd character varying(50),
      inl_eqp_model_cd character varying(50),
      inl_flow_id character varying(100),
      inl_port_no character varying(10),
      inl_batch_id character varying(50),
      inl_stepper_id character varying(50),
      inl_wf_cnt numeric,
      inl_rwk_cnt numeric,
      inl_ingot_fac_id character varying(50),
      inl_ingot_maker_cd character varying(50),
      inl_casset_id character varying(50),
      inl_casset_crt_dt character varying(8),
      inl_hot_run_cd character varying(50),
      inl_trbl_lot_yn character varying(1),
      inl_chg_typ character varying(50),
      inl_header_id character varying(50),
      inl_chg_reticle_id character varying(200),
      resv_field_nm_5 character varying(200),
      prb_eqp_id character varying(50),
      prb_eqp_model_cd character varying(50),
      prb_eqp_maker_cd character varying(50),
      prb_pgm_id character varying(50),
      prb_parent_card_id character varying(50),
      prb_card_id character varying(50),
      prb_hot_run_cd character varying(50),
      prb_bmw_review_cd character varying(50),
      prb_bmw_cd_desc character varying(4000),
      resv_field_nm_6 character varying(200),
      resv_field_nm_7 character varying(200),
      resv_field_nm_8 character varying(200),
      resv_field_nm_9 character varying(200),
      resv_field_nm_10 character varying(200),
      pkt_eqp_id character varying(50),
      pkt_eqp_model_cd character varying(50),
      pkt_lead_cnt numeric,
      pkt_matl_gbn_cd character varying(50),
      pkt_vendor_gbn_cd character varying(50),
      note character varying(1000),
      pkt_prod_id character varying(50),
      owner_nm character varying(200),
      resv_attr_val character varying(50),
      pkg_mod_nm character varying(200),
      grade_cd character varying(50),
      test_pgm_id character varying(50),
      handler_id character varying(50),
      bib_id character varying(50),
      pkg_cfg_method_nm character varying(200),
      pkt_typ character varying(50),
      io_val character varying(50),
      pkg_site_cd character varying(50),
      inl_ingot_id character varying(50),
      stk_id character varying(50),
      shelf_id character varying(50),
      valid_yn character varying(1) DEFAULT 'Y'::character varying,
      old_prod_id character varying(50),
      stepper_recipe_id character varying(200),
      main_eqp_recipe_id character varying(200),
      inl_recipe_grp_id character varying(50),
      test_flow_id character varying(100),
      det_fab_id character varying(10),
      meas_det_fab_id character varying(10),
      CONSTRAINT inl_repwfmetr_inf_pkey PRIMARY KEY (alias_lot_id, wf_id, oper_id, param_nm, end_tm, lot_id)
)
WITH (
      OIDS=FALSE
)
DISTRIBUTED BY (alias_lot_id, wf_id)
-- PARTITION BY RANGE(end_tm)
--    (
--    PARTITION p201907 START ('20190701'::character varying) END ('20190801'::character varying),
--    PARTITION p201908 START ('20190801'::character varying) END ('20190901'::character varying),
--    PARTITION p201909 START ('20190901'::character varying) END ('20191001'::character varying),
--    PARTITION p201910 START ('20191001'::character varying) END ('20191101'::character varying),
--    PARTITION p201911 START ('20191101'::character varying) END ('20191201'::character varying),
--    PARTITION p201912 START ('20191201'::character varying) END ('20200101'::character varying),
--    DEFAULT PARTITION ptnul
--    )
--;