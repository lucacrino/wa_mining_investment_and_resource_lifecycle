--This file contains the data definition language (ddl) used to create all the project tables

CREATE TABLE IF NOT EXISTS public.abandoned_mines
(
    site_code varchar,
    wabmines_n varchar,
    feature_gr text,
    feature_ty text,
    site_type text,
    site_sub_t text,
    latitude numeric,
    longitude numeric,
    mga_zone integer,
    easting numeric,
    northing numeric,
    commoditie text,
    commodity_,
    target_com text,
    observatio date,
    originator text,
    bund text,
    bund_max numeric,
    bund_min numeric,
    condition text,
    visibility text,
    visual_imp,
    length numeric,
    width numeric,
    depth text,
    height numeric,
    strike numeric,
    azimuth numeric,
    dip numeric,
    edge_stabi text,
    base_condi text,
    excavation text,
    fences text,
    signs text,
    mf_shape text,
    revegetati text,
    ug_timbers text,
    ug_access text,
    headframe text,
    ug_seal_ty text,
    ug_seal_co text,
    open_cut_o text,
    water_cond text,
    ramp text,
    dump_mater text,
    dump_other text,
    dispersion text,
    dispersi00 numeric,
    site_confi text,
    point_conf text,
    web_link text,
    CONSTRAINT abandoned_mines_pkey PRIMARY KEY (site_code)
);




CREATE TABLE IF NOT EXISTS public.atlas_map
(
    project_code varchar,
    project_name text,
    site_code varchar,
    site_name text,
    site_short text,
    site_type text,
    site_subt text,
    site_stage text,
    site_com_g text,
    site_tcg text,
    confid text,
    latitude numeric,
    longitude numeric,
    mga_zone integer,
    easting numeric,
    northing numeric,
    mx_map text,
    atl_ml_n text,
    atl_ml_c text,
    atl_ml_ca text,
    atl_a_flag text
);




CREATE TABLE IF NOT EXISTS public.major_resource_projects
(
    site_code varchar,
    short_title text,
    title text,
    site_type text,
    sub_type text,
    stage text,
    project_code varchar,
    project_title text,
    longitude numeric,
    latitude numeric,
    easting numeric,
    northing numeric,
    mga_zone integer,
    commodities text,
    commodity_group_name text,
    target_group_name text,
    map_label_name text,
    include_commodity_flag text,
    map_commodities text,
    active_flag text,
    symbol text,
    symbol_status text,
    map_series text,
    confidentiality text,
    map_sheet_no_100k integer,
    map_sheet_name_100k text,
    map_sheet_no_250k text,
    map_sheet_name_250k text,
    lga_name text,
    development_region text,
    district_no integer,
    district_name text,
    tectonic_unit text,
    CONSTRAINT major_resource_projects_pkey PRIMARY KEY (site_code)
);




CREATE TABLE IF NOT EXISTS public.operating_mines
(
    site_code varchar,
    short_title text,
    title text,
    site_type text,
    sub_type text,
    stage text,
    project_code varchar,
    project_title text,
    longitude numeric,
    latitude numeric,
    easting numeric,
    northing numeric,
    mga_zone integer,
    commodities text,
    commodity_group_name text,
    target_group_name text,
    map_label_name text,
    include_commodity_flag text,
    map_commodities text,
    active_flag text,
    symbol text,
    map_series text,
    confidentiality text,
    map_sheet_no_100k integer,
    map_sheet_name_100k text,
    map_sheet_no_250k text,
    map_sheet_name_250k text,
    lga_name text,
    development_region text,
    district_no integer,
    district_name text,
    tectonic_unit text,
    CONSTRAINT operating_mines_pkey PRIMARY KEY (site_code)
);




CREATE TABLE IF NOT EXISTS public.project_lookup
(
    project_code varchar,
    status text,
    start_date date,
    end_date date,
    project_mine_stage text,
    project_exploration_stage text,
    limo_flag text,
    title text,
    CONSTRAINT projects_pkey PRIMARY KEY (project_code)
);




CREATE TABLE IF NOT EXISTS public.projects_owners
(
    project_code varchar,
    project_title text,
    owner_code varchar,
    owner_name text,
    start_date date,
    end_date date,
    holding_pct text,
    entity_type text,
    entity_id_dmp integer,
    CONSTRAINT projects_owners_pkey PRIMARY KEY (owner_code, project_code)
);




CREATE TABLE IF NOT EXISTS public.resource_estimates
(
    resource_code integer,
    site_code varchar,
    site_name text,
    short_title text,
    site_type text,
    site_subtype text,
    site_stage text,
    siteprimarycommodity text,
    project_short_name text,
    project_code varchar,
    latitude numeric,
    longitude numeric,
    tectonic_unit text,
    local_government_authority text,
    development_region text,
    mining_district_name text,
    mining_district_number integer,
    map_sheet_100k integer,
    map_sheet_250k text,
    estimate_commodity text,
    estimate_commodity_abbreviation text,
    start_date date,
    end_date date,
    resource_category text,
    resource_status text,
    calculation_method text,
    estimate_type text,
    reporting_code text,
    reporting_code_comments text,
    estimate_quantity numeric,
    estimate_quantity_unit text,
    grade numeric,
    grade_unit text,
    contained_commodity numeric,
    contained_commodity_unit text,
    alternative_contained_commodity numeric,
    alternative_contained_commodity_unit text,
    resource_estimate_primary_mineralisation_style text,
    resource_estimate_secondary_mineralisation_style text
);




    CREATE TABLE IF NOT EXISTS public.resource_estimates_by_project
(
    object_id integer,
    project_name text,
    project_short text,
    project_code varchar,
    pri_p_com text,
    loc_site text,
    latitude numeric,
    longitude numeric,
    tect_unit text,
    est_com text,
    est_com_ab text,
    est_com_p text,
    res_qty numeric,
    res_qty_u text,
    res_qty_g numeric,
    res_qty_gu text,
    res_con numeric,
    res_con_u text,
    ares_con numeric,
    ares_con_u text,
    rv_qty numeric,
    rv_qty_u text,
    rv_qty_g numeric,
    rv_qty_gu text,
    rv_con numeric,
    rv_con_u text,
    arv_con numeric,
    arv_con_u text,
    point_size numeric,
    point_unit text,
    project_url text,
    CONSTRAINT resource_estimates_by_project_pkey PRIMARY KEY (object_id, project_code)
);




CREATE TABLE IF NOT EXISTS public.site_lithology
(
    site_code varchar,
    short_title text,
    lithology text,
    rock_type text,
    strat_name text,
    age text
);




CREATE TABLE IF NOT EXISTS public.site_mineralization
(
    site_code varchar,
    short_title text,
    mineralization_style text,
    secondary_mineralization_style text,
    ore_minerals text,
    gangue_minerals text,
    alteration text,
    expression text,
    ore_controls text,
    mineralization_type text,
    mineralization_texture text,
    vein_style text,
    structural_modifiers text,
    shape text,
    relation_to_host text,
    metamorphic_grade text,
    mineralization_age text,
    age_method text
);




CREATE TABLE IF NOT EXISTS public.site_notes
(
    site_code varchar,
    note_date date,
    note text
);




CREATE TABLE IF NOT EXISTS public.site_operators
(
    project_code varchar,
    project_name text,
    site_code varchar,
    site_name text,
    site_type text,
    site_subt text,
    site_stage text,
    operator_code varchar,
    op_name text,
    op_start date,
    op_end date,
    op_address text,
    op_postc text,
    op_phone text,
    op_fax text,
    op_email text
);




CREATE TABLE IF NOT EXISTS public.site_production
(
    site_code varchar,
    short_title text,
    period_interval text,
    start_date date,
    end_date date,
    production_type text,
    product_name text,
    quantity numeric,
    quantity_units text,
    accuracy text,
    in_total text,
    commodity text,
    grade numeric,
    grade_unit text,
    contained_metal numeric,
    contained_metal_unit text
);




CREATE TABLE IF NOT EXISTS public.site_project
(
    site_code varchar,
    short_title text,
    title text,
    type text,
    sub_type text,
    stage text,
    confidentiality text,
    project_code varchar,
    project_title text,
    latitude numeric,
    longitude numeric,
    mga_zone integer,
    easting numeric,
    northing numeric,
    group_site text,
    commodities text,
    commodity_groups text,
    target_commodity_groups text,
    mineralization_style text,
    secondary_mineralization_style text,
    map_sheet_no_100k integer,
    map_sheet_name_100k text,
    map_sheet_no_250k text,
    map_sheet_name_250k text,
    lga_name text,
    development_region text,
    district_no integer,
    district_name text,
    tectonic_unit text,
    eil_flag text,
    eis_flag text,
    gbrm_flag text
);




CREATE TABLE IF NOT EXISTS public.site_tenements
(
    site_code varchar,
    short_title text ,
    tenement_code varchar,
    status text,
    applied_date date,
    grant_date date,
    expiry_date date,
    dead_date date
)
