-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para VIETNAM (VN)
-- Archivo: VN_vietnam_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para VIETNAM: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_vn', 245, 8, 'Provincia', 'Province',
    'Tỉnh', 'Tỉnh', 'Tinh', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de VIETNAM (Provincias y Ciudades)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(1559969, 245, 'nghe_an', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Nghệ An', 'Nghệ An Province', 'Nghệ An Province', 'Nghệ An Province', 'Nghệ An Province', 1, NOW(6), NOW(6), 1, 1),
(1565033, 245, 'thua_thien_hue', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Thừa Thiên Huế', 'Thừa Thiên Huế Province', 'Thừa Thiên Huế Province', 'Thừa Thiên Huế Province', 'Thừa Thiên Huế Province', 1, NOW(6), NOW(6), 1, 1),
(1566165, 245, 'thanh_hoa', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Thanh Hóa', 'Thanh Hóa Province', 'Thanh Hóa Province', 'Thanh Hóa Province', 'Thanh Hóa Province', 1, NOW(6), NOW(6), 1, 1),
(1567643, 245, 'son_la', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Sơn La', 'Sơn La Province', 'Sơn La Province', 'Sơn La Province', 'Sơn La Province', 1, NOW(6), NOW(6), 1, 1),
(1568758, 245, 'quang_ninh', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Quảng Ninh', 'Quảng Ninh Province', 'Quảng Ninh Province', 'Quảng Ninh Province', 'Quảng Ninh Province', 1, NOW(6), NOW(6), 1, 1),
(1576632, 245, 'lang_son', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Lạng Sơn', 'Lạng Sơn Province', 'Lạng Sơn Province', 'Lạng Sơn Province', 'Lạng Sơn Province', 1, NOW(6), NOW(6), 1, 1),
(1577954, 245, 'lai_chau', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Lai Châu', 'Lai Châu Province', 'Lai Châu Province', 'Lai Châu Province', 'Lai Châu Province', 1, NOW(6), NOW(6), 1, 1),
(1580700, 245, 'ha_tinh', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Hà Tĩnh', 'Hà Tĩnh Province', 'Hà Tĩnh Province', 'Hà Tĩnh Province', 'Hà Tĩnh Province', 1, NOW(6), NOW(6), 1, 1),
(1581129, 245, 'hanoi', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Hanói', 'Hanoi', 'Hanoi', 'Hanoi', 'Hanoi', 1, NOW(6), NOW(6), 1, 1),
(1586182, 245, 'cao_bang', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Cao Bằng', 'Cao Bằng Province', 'Cao Bằng Province', 'Cao Bằng Province', 'Cao Bằng Province', 1, NOW(6), NOW(6), 1, 1),
(1905099, 245, 'dien_bien', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Điện Biên', 'Điện Biên Province', 'Điện Biên Province', 'Điện Biên Province', 'Điện Biên Province', 1, NOW(6), NOW(6), 1, 1),
(13494334, 245, 'lao_cai', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Lào Cai', 'Lào Cai Province', 'Lào Cai Province', 'Lào Cai Province', 'Lào Cai Province', 1, NOW(6), NOW(6), 1, 1),
(13494335, 245, 'thai_nguyen', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Thái Nguyên', 'Thái Nguyên Province', 'Thái Nguyên Province', 'Thái Nguyên Province', 'Thái Nguyên Province', 1, NOW(6), NOW(6), 1, 1),
(13494344, 245, 'bac_ninh', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Bắc Ninh', 'Bắc Ninh Province', 'Bắc Ninh Province', 'Bắc Ninh Province', 'Bắc Ninh Province', 1, NOW(6), NOW(6), 1, 1),
(13494345, 245, 'phu_tho', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Phú Thọ', 'Phú Thọ Province', 'Phú Thọ Province', 'Phú Thọ Province', 'Phú Thọ Province', 1, NOW(6), NOW(6), 1, 1),
(13494346, 245, 'hai_phong', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Hai Phong', 'Hai Phong', 'Hai Phong', 'Hai Phong', 'Hai Phong', 1, NOW(6), NOW(6), 1, 1),
(13494347, 245, 'hung_yen', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Hưng Yên', 'Hưng Yên Province', 'Hưng Yên Province', 'Hưng Yên Province', 'Hưng Yên Province', 1, NOW(6), NOW(6), 1, 1),
(13494348, 245, 'ninh_binh', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Ninh Bình', 'Ninh Bình Province', 'Ninh Bình Province', 'Ninh Bình Province', 'Ninh Bình Province', 1, NOW(6), NOW(6), 1, 1),
(13494350, 245, 'quang_tri', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Quảng Trị', 'Quảng Trị Province', 'Quảng Trị Province', 'Quảng Trị Province', 'Quảng Trị Province', 1, NOW(6), NOW(6), 1, 1),
(13494351, 245, 'da_nang', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Đà Nẵng', 'Da Nang City', 'Da Nang City', 'Da Nang City', 'Da Nang City', 1, NOW(6), NOW(6), 1, 1),
(13494352, 245, 'quang_ngai', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Quảng Ngãi', 'Quảng Ngãi Province', 'Quảng Ngãi Province', 'Quảng Ngãi Province', 'Quảng Ngãi Province', 1, NOW(6), NOW(6), 1, 1),
(13494353, 245, 'gia_lai', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Gia Lai', 'Gia Lai Province', 'Gia Lai Province', 'Gia Lai Province', 'Gia Lai Province', 1, NOW(6), NOW(6), 1, 1),
(13494354, 245, 'khanh_hoa', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Khánh Hòa', 'Khánh Hòa Province', 'Khánh Hòa Province', 'Khánh Hòa Province', 'Khánh Hòa Province', 1, NOW(6), NOW(6), 1, 1),
(13494355, 245, 'dak_lak', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Đắk Lắk', 'Đắk Lắk Province', 'Đắk Lắk Province', 'Đắk Lắk Province', 'Đắk Lắk Province', 1, NOW(6), NOW(6), 1, 1),
(13494356, 245, 'lam_dong', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Lâm Đồng', 'Lâm Đồng Province', 'Lâm Đồng Province', 'Lâm Đồng Province', 'Lâm Đồng Province', 1, NOW(6), NOW(6), 1, 1),
(13494357, 245, 'dong_nai', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Đồng Nai', 'Đồng Nai Province', 'Đồng Nai Province', 'Đồng Nai Province', 'Đồng Nai Province', 1, NOW(6), NOW(6), 1, 1),
(13494358, 245, 'ho_chi_minh', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Ciudad Ho Chi Minh', 'Ho Chi Minh City (HCMC)', 'Ho Chi Minh City (HCMC)', 'Ho Chi Minh City (HCMC)', 'Ho Chi Minh City (HCMC)', 1, NOW(6), NOW(6), 1, 1),
(13494359, 245, 'tay_ninh', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Tây Ninh', 'Tây Ninh Province', 'Tây Ninh Province', 'Tây Ninh Province', 'Tây Ninh Province', 1, NOW(6), NOW(6), 1, 1),
(13494360, 245, 'dong_thap', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Đồng Tháp', 'Đồng Tháp Province', 'Đồng Tháp Province', 'Đồng Tháp Province', 'Đồng Tháp Province', 1, NOW(6), NOW(6), 1, 1),
(13494361, 245, 'vinh_long', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Vĩnh Long', 'Vĩnh Long Province', 'Vĩnh Long Province', 'Vĩnh Long Province', 'Vĩnh Long Province', 1, NOW(6), NOW(6), 1, 1),
(13494362, 245, 'an_giang', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'An Giang', 'An Giang Province', 'An Giang Province', 'An Giang Province', 'An Giang Province', 1, NOW(6), NOW(6), 1, 1),
(13494363, 245, 'can_tho', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Cần Thơ', 'Can Tho City', 'Can Tho City', 'Can Tho City', 'Can Tho City', 1, NOW(6), NOW(6), 1, 1),
(13494364, 245, 'ca_mau', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Cà Mau', 'Cà Mau Province', 'Cà Mau Province', 'Cà Mau Province', 'Cà Mau Province', 1, NOW(6), NOW(6), 1, 1),
(13494365, 245, 'tuyen_quang', NULL, NULL, '000', 'VN-000', 'VN-000', '+84', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vn' AND id_country = 245), 'Tuyên Quang', 'Tuyên Quang Province', 'Tuyên Quang Province', 'Tuyên Quang Province', 'Tuyên Quang Province', 1, NOW(6), NOW(6), 1, 1);