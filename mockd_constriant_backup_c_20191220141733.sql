ALTER TABLE public.inl_repwfmetr_inf_1_prt_p201907 ADD CONSTRAINT inl_repwfmetr_inf_1_prt_p201907_check CHECK (end_tm::text >= '20190701'::text AND end_tm::text < '20190801'::text);
ALTER TABLE public.inl_repwfmetr_inf_1_prt_p201908 ADD CONSTRAINT inl_repwfmetr_inf_1_prt_p201908_check CHECK (end_tm::text >= '20190801'::text AND end_tm::text < '20190901'::text);
ALTER TABLE public.inl_repwfmetr_inf_1_prt_p201909 ADD CONSTRAINT inl_repwfmetr_inf_1_prt_p201909_check CHECK (end_tm::text >= '20190901'::text AND end_tm::text < '20191001'::text);
ALTER TABLE public.inl_repwfmetr_inf_1_prt_p201910 ADD CONSTRAINT inl_repwfmetr_inf_1_prt_p201910_check CHECK (end_tm::text >= '20191001'::text AND end_tm::text < '20191101'::text);
ALTER TABLE public.inl_repwfmetr_inf_1_prt_p201911 ADD CONSTRAINT inl_repwfmetr_inf_1_prt_p201911_check CHECK (end_tm::text >= '20191101'::text AND end_tm::text < '20191201'::text);
ALTER TABLE public.inl_repwfmetr_inf_1_prt_p201912 ADD CONSTRAINT inl_repwfmetr_inf_1_prt_p201912_check CHECK (end_tm::text >= '20191201'::text AND end_tm::text < '20200101'::text);
