(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type output_columns = {
  description: string prop;  (** description *)
  name: string prop;  (** name *)
  type_: string prop; [@key "type"] (** type *)
}
type column_groups__geo_spatial_column_group

val column_groups__geo_spatial_column_group :
    columns:string  prop list ->
    country_code:string prop ->
    name:string prop ->
    unit ->
    column_groups__geo_spatial_column_group

type column_groups

val column_groups :
    geo_spatial_column_group:column_groups__geo_spatial_column_group list ->
    unit ->
    column_groups

type column_level_permission_rules

val column_level_permission_rules :
    ?column_names:string  prop list ->
    ?principals:string  prop list ->
    unit ->
    column_level_permission_rules

type data_set_usage_configuration

val data_set_usage_configuration :
    ?disable_use_as_direct_query_source:bool prop ->
    ?disable_use_as_imported_source:bool prop ->
    unit ->
    data_set_usage_configuration

type field_folders

val field_folders :
    ?columns:string  prop list ->
    ?description:string prop ->
    field_folders_id:string prop ->
    unit ->
    field_folders

type logical_table_map__data_transforms__cast_column_type_operation

val logical_table_map__data_transforms__cast_column_type_operation :
    ?format:string prop ->
    column_name:string prop ->
    new_column_type:string prop ->
    unit ->
    logical_table_map__data_transforms__cast_column_type_operation

type logical_table_map__data_transforms__create_columns_operation__columns

val logical_table_map__data_transforms__create_columns_operation__columns :
    column_id:string prop ->
    column_name:string prop ->
    expression:string prop ->
    unit ->
    logical_table_map__data_transforms__create_columns_operation__columns

type logical_table_map__data_transforms__create_columns_operation

val logical_table_map__data_transforms__create_columns_operation :
    columns:logical_table_map__data_transforms__create_columns_operation__columns list ->
    unit ->
    logical_table_map__data_transforms__create_columns_operation

type logical_table_map__data_transforms__filter_operation

val logical_table_map__data_transforms__filter_operation :
    condition_expression:string prop ->
    unit ->
    logical_table_map__data_transforms__filter_operation

type logical_table_map__data_transforms__project_operation

val logical_table_map__data_transforms__project_operation :
    projected_columns:string  prop list ->
    unit ->
    logical_table_map__data_transforms__project_operation

type logical_table_map__data_transforms__rename_column_operation

val logical_table_map__data_transforms__rename_column_operation :
    column_name:string prop ->
    new_column_name:string prop ->
    unit ->
    logical_table_map__data_transforms__rename_column_operation

type logical_table_map__data_transforms__tag_column_operation__tags__column_description

val logical_table_map__data_transforms__tag_column_operation__tags__column_description :
    ?text:string prop ->
    unit ->
    logical_table_map__data_transforms__tag_column_operation__tags__column_description

type logical_table_map__data_transforms__tag_column_operation__tags

val logical_table_map__data_transforms__tag_column_operation__tags :
    ?column_geographic_role:string prop ->
    column_description:logical_table_map__data_transforms__tag_column_operation__tags__column_description list ->
    unit ->
    logical_table_map__data_transforms__tag_column_operation__tags

type logical_table_map__data_transforms__tag_column_operation

val logical_table_map__data_transforms__tag_column_operation :
    column_name:string prop ->
    tags:logical_table_map__data_transforms__tag_column_operation__tags list ->
    unit ->
    logical_table_map__data_transforms__tag_column_operation

type logical_table_map__data_transforms__untag_column_operation

val logical_table_map__data_transforms__untag_column_operation :
    column_name:string prop ->
    tag_names:string  prop list ->
    unit ->
    logical_table_map__data_transforms__untag_column_operation

type logical_table_map__data_transforms

val logical_table_map__data_transforms :
    cast_column_type_operation:logical_table_map__data_transforms__cast_column_type_operation list ->
    create_columns_operation:logical_table_map__data_transforms__create_columns_operation list ->
    filter_operation:logical_table_map__data_transforms__filter_operation list ->
    project_operation:logical_table_map__data_transforms__project_operation list ->
    rename_column_operation:logical_table_map__data_transforms__rename_column_operation list ->
    tag_column_operation:logical_table_map__data_transforms__tag_column_operation list ->
    untag_column_operation:logical_table_map__data_transforms__untag_column_operation list ->
    unit ->
    logical_table_map__data_transforms

type logical_table_map__source__join_instruction__left_join_key_properties

val logical_table_map__source__join_instruction__left_join_key_properties :
    ?unique_key:bool prop ->
    unit ->
    logical_table_map__source__join_instruction__left_join_key_properties

type logical_table_map__source__join_instruction__right_join_key_properties

val logical_table_map__source__join_instruction__right_join_key_properties :
    ?unique_key:bool prop ->
    unit ->
    logical_table_map__source__join_instruction__right_join_key_properties

type logical_table_map__source__join_instruction

val logical_table_map__source__join_instruction :
    left_operand:string prop ->
    on_clause:string prop ->
    right_operand:string prop ->
    type_:string prop ->
    left_join_key_properties:logical_table_map__source__join_instruction__left_join_key_properties list ->
    right_join_key_properties:logical_table_map__source__join_instruction__right_join_key_properties list ->
    unit ->
    logical_table_map__source__join_instruction

type logical_table_map__source

val logical_table_map__source :
    ?data_set_arn:string prop ->
    ?physical_table_id:string prop ->
    join_instruction:logical_table_map__source__join_instruction list ->
    unit ->
    logical_table_map__source

type logical_table_map

val logical_table_map :
    alias:string prop ->
    logical_table_map_id:string prop ->
    data_transforms:logical_table_map__data_transforms list ->
    source:logical_table_map__source list ->
    unit ->
    logical_table_map

type permissions

val permissions :
    actions:string  prop list ->
    principal:string prop ->
    unit ->
    permissions

type physical_table_map__custom_sql__columns

val physical_table_map__custom_sql__columns :
    name:string prop ->
    type_:string prop ->
    unit ->
    physical_table_map__custom_sql__columns

type physical_table_map__custom_sql

val physical_table_map__custom_sql :
    data_source_arn:string prop ->
    name:string prop ->
    sql_query:string prop ->
    columns:physical_table_map__custom_sql__columns list ->
    unit ->
    physical_table_map__custom_sql

type physical_table_map__relational_table__input_columns

val physical_table_map__relational_table__input_columns :
    name:string prop ->
    type_:string prop ->
    unit ->
    physical_table_map__relational_table__input_columns

type physical_table_map__relational_table

val physical_table_map__relational_table :
    ?catalog:string prop ->
    ?schema:string prop ->
    data_source_arn:string prop ->
    name:string prop ->
    input_columns:physical_table_map__relational_table__input_columns list ->
    unit ->
    physical_table_map__relational_table

type physical_table_map__s3_source__input_columns

val physical_table_map__s3_source__input_columns :
    name:string prop ->
    type_:string prop ->
    unit ->
    physical_table_map__s3_source__input_columns

type physical_table_map__s3_source__upload_settings

val physical_table_map__s3_source__upload_settings :
    ?contains_header:bool prop ->
    ?delimiter:string prop ->
    ?format:string prop ->
    ?start_from_row:float prop ->
    ?text_qualifier:string prop ->
    unit ->
    physical_table_map__s3_source__upload_settings

type physical_table_map__s3_source

val physical_table_map__s3_source :
    data_source_arn:string prop ->
    input_columns:physical_table_map__s3_source__input_columns list ->
    upload_settings:physical_table_map__s3_source__upload_settings list ->
    unit ->
    physical_table_map__s3_source

type physical_table_map

val physical_table_map :
    physical_table_map_id:string prop ->
    custom_sql:physical_table_map__custom_sql list ->
    relational_table:physical_table_map__relational_table list ->
    s3_source:physical_table_map__s3_source list ->
    unit ->
    physical_table_map

type refresh_properties__refresh_configuration__incremental_refresh__lookback_window

val refresh_properties__refresh_configuration__incremental_refresh__lookback_window :
    column_name:string prop ->
    size:float prop ->
    size_unit:string prop ->
    unit ->
    refresh_properties__refresh_configuration__incremental_refresh__lookback_window

type refresh_properties__refresh_configuration__incremental_refresh

val refresh_properties__refresh_configuration__incremental_refresh :
    lookback_window:refresh_properties__refresh_configuration__incremental_refresh__lookback_window list ->
    unit ->
    refresh_properties__refresh_configuration__incremental_refresh

type refresh_properties__refresh_configuration

val refresh_properties__refresh_configuration :
    incremental_refresh:refresh_properties__refresh_configuration__incremental_refresh list ->
    unit ->
    refresh_properties__refresh_configuration

type refresh_properties

val refresh_properties :
    refresh_configuration:refresh_properties__refresh_configuration list ->
    unit ->
    refresh_properties

type row_level_permission_data_set

val row_level_permission_data_set :
    ?format_version:string prop ->
    ?namespace:string prop ->
    ?status:string prop ->
    arn:string prop ->
    permission_policy:string prop ->
    unit ->
    row_level_permission_data_set

type row_level_permission_tag_configuration__tag_rules

val row_level_permission_tag_configuration__tag_rules :
    ?match_all_value:string prop ->
    ?tag_multi_value_delimiter:string prop ->
    column_name:string prop ->
    tag_key:string prop ->
    unit ->
    row_level_permission_tag_configuration__tag_rules

type row_level_permission_tag_configuration

val row_level_permission_tag_configuration :
    ?status:string prop ->
    tag_rules:row_level_permission_tag_configuration__tag_rules list ->
    unit ->
    row_level_permission_tag_configuration

type aws_quicksight_data_set

val aws_quicksight_data_set :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    data_set_id:string prop ->
    import_mode:string prop ->
    name:string prop ->
    column_groups:column_groups list ->
    column_level_permission_rules:column_level_permission_rules list ->
    data_set_usage_configuration:data_set_usage_configuration list ->
    field_folders:field_folders list ->
    logical_table_map:logical_table_map list ->
    permissions:permissions list ->
    physical_table_map:physical_table_map list ->
    refresh_properties:refresh_properties list ->
    row_level_permission_data_set:row_level_permission_data_set list ->
    row_level_permission_tag_configuration:row_level_permission_tag_configuration list ->
    unit ->
    aws_quicksight_data_set

val yojson_of_aws_quicksight_data_set : aws_quicksight_data_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn: string prop;
  aws_account_id: string prop;
  data_set_id: string prop;
  id: string prop;
  import_mode: string prop;
  name: string prop;
  output_columns: output_columns list prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    data_set_id:string prop ->
    import_mode:string prop ->
    name:string prop ->
    column_groups:column_groups list ->
    column_level_permission_rules:column_level_permission_rules list ->
    data_set_usage_configuration:data_set_usage_configuration list ->
    field_folders:field_folders list ->
    logical_table_map:logical_table_map list ->
    permissions:permissions list ->
    physical_table_map:physical_table_map list ->
    refresh_properties:refresh_properties list ->
    row_level_permission_data_set:row_level_permission_data_set list ->
    row_level_permission_tag_configuration:row_level_permission_tag_configuration list ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    data_set_id:string prop ->
    import_mode:string prop ->
    name:string prop ->
    column_groups:column_groups list ->
    column_level_permission_rules:column_level_permission_rules list ->
    data_set_usage_configuration:data_set_usage_configuration list ->
    field_folders:field_folders list ->
    logical_table_map:logical_table_map list ->
    permissions:permissions list ->
    physical_table_map:physical_table_map list ->
    refresh_properties:refresh_properties list ->
    row_level_permission_data_set:row_level_permission_data_set list ->
    row_level_permission_tag_configuration:row_level_permission_tag_configuration list ->
    string ->
    t Tf_core.resource

