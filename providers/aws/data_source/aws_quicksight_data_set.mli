(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type column_groups__geo_spatial_column_group = {
  columns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** columns *)
  country_code : string prop;  (** country_code *)
  name : string prop;  (** name *)
}

type column_groups = {
  geo_spatial_column_group :
    column_groups__geo_spatial_column_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** geo_spatial_column_group *)
}

type data_set_usage_configuration = {
  disable_use_as_direct_query_source : bool prop;
      (** disable_use_as_direct_query_source *)
  disable_use_as_imported_source : bool prop;
      (** disable_use_as_imported_source *)
}

type field_folders = {
  columns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** columns *)
  description : string prop;  (** description *)
  field_folders_id : string prop;  (** field_folders_id *)
}

type logical_table_map__source__join_instruction__right_join_key_properties = {
  unique_key : bool prop;  (** unique_key *)
}

type logical_table_map__source__join_instruction__left_join_key_properties = {
  unique_key : bool prop;  (** unique_key *)
}

type logical_table_map__source__join_instruction = {
  left_join_key_properties :
    logical_table_map__source__join_instruction__left_join_key_properties
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** left_join_key_properties *)
  left_operand : string prop;  (** left_operand *)
  on_clause : string prop;  (** on_clause *)
  right_join_key_properties :
    logical_table_map__source__join_instruction__right_join_key_properties
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** right_join_key_properties *)
  right_operand : string prop;  (** right_operand *)
  type_ : string prop; [@key "type"]  (** type *)
}

type logical_table_map__source = {
  data_set_arn : string prop;  (** data_set_arn *)
  join_instruction :
    logical_table_map__source__join_instruction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** join_instruction *)
  physical_table_id : string prop;  (** physical_table_id *)
}

type logical_table_map__data_transforms__untag_column_operation = {
  column_name : string prop;  (** column_name *)
  tag_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tag_names *)
}

type logical_table_map__data_transforms__tag_column_operation__tags__column_description = {
  text : string prop;  (** text *)
}

type logical_table_map__data_transforms__tag_column_operation__tags = {
  column_description :
    logical_table_map__data_transforms__tag_column_operation__tags__column_description
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** column_description *)
  column_geographic_role : string prop;  (** column_geographic_role *)
}

type logical_table_map__data_transforms__tag_column_operation = {
  column_name : string prop;  (** column_name *)
  tags :
    logical_table_map__data_transforms__tag_column_operation__tags
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type logical_table_map__data_transforms__rename_column_operation = {
  column_name : string prop;  (** column_name *)
  new_column_name : string prop;  (** new_column_name *)
}

type logical_table_map__data_transforms__project_operation = {
  projected_columns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** projected_columns *)
}

type logical_table_map__data_transforms__filter_operation = {
  condition_expression : string prop;  (** condition_expression *)
}

type logical_table_map__data_transforms__create_columns_operation__columns = {
  column_id : string prop;  (** column_id *)
  column_name : string prop;  (** column_name *)
  expression : string prop;  (** expression *)
}

type logical_table_map__data_transforms__create_columns_operation = {
  columns :
    logical_table_map__data_transforms__create_columns_operation__columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** columns *)
}

type logical_table_map__data_transforms__cast_column_type_operation = {
  column_name : string prop;  (** column_name *)
  format : string prop;  (** format *)
  new_column_type : string prop;  (** new_column_type *)
}

type logical_table_map__data_transforms = {
  cast_column_type_operation :
    logical_table_map__data_transforms__cast_column_type_operation
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cast_column_type_operation *)
  create_columns_operation :
    logical_table_map__data_transforms__create_columns_operation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** create_columns_operation *)
  filter_operation :
    logical_table_map__data_transforms__filter_operation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** filter_operation *)
  project_operation :
    logical_table_map__data_transforms__project_operation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** project_operation *)
  rename_column_operation :
    logical_table_map__data_transforms__rename_column_operation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** rename_column_operation *)
  tag_column_operation :
    logical_table_map__data_transforms__tag_column_operation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tag_column_operation *)
  untag_column_operation :
    logical_table_map__data_transforms__untag_column_operation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** untag_column_operation *)
}

type logical_table_map = {
  alias : string prop;  (** alias *)
  data_transforms : logical_table_map__data_transforms list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** data_transforms *)
  logical_table_map_id : string prop;  (** logical_table_map_id *)
  source : logical_table_map__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source *)
}

type permissions = {
  actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** actions *)
  principal : string prop;  (** principal *)
}

type physical_table_map__s3_source__upload_settings = {
  contains_header : bool prop;  (** contains_header *)
  delimiter : string prop;  (** delimiter *)
  format : string prop;  (** format *)
  start_from_row : float prop;  (** start_from_row *)
  text_qualifier : string prop;  (** text_qualifier *)
}

type physical_table_map__s3_source__input_columns = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type physical_table_map__s3_source = {
  data_source_arn : string prop;  (** data_source_arn *)
  input_columns : physical_table_map__s3_source__input_columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** input_columns *)
  upload_settings :
    physical_table_map__s3_source__upload_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** upload_settings *)
}

type physical_table_map__relational_table__input_columns = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type physical_table_map__relational_table = {
  catalog : string prop;  (** catalog *)
  data_source_arn : string prop;  (** data_source_arn *)
  input_columns :
    physical_table_map__relational_table__input_columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** input_columns *)
  name : string prop;  (** name *)
  schema : string prop;  (** schema *)
}

type physical_table_map__custom_sql__columns = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type physical_table_map__custom_sql = {
  columns : physical_table_map__custom_sql__columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** columns *)
  data_source_arn : string prop;  (** data_source_arn *)
  name : string prop;  (** name *)
  sql_query : string prop;  (** sql_query *)
}

type physical_table_map = {
  custom_sql : physical_table_map__custom_sql list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** custom_sql *)
  physical_table_map_id : string prop;  (** physical_table_map_id *)
  relational_table : physical_table_map__relational_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** relational_table *)
  s3_source : physical_table_map__s3_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** s3_source *)
}

type row_level_permission_data_set = {
  arn : string prop;  (** arn *)
  format_version : string prop;  (** format_version *)
  namespace : string prop;  (** namespace *)
  permission_policy : string prop;  (** permission_policy *)
  status : string prop;  (** status *)
}

type row_level_permission_tag_configuration__tag_rules = {
  column_name : string prop;  (** column_name *)
  match_all_value : string prop;  (** match_all_value *)
  tag_key : string prop;  (** tag_key *)
  tag_multi_value_delimiter : string prop;
      (** tag_multi_value_delimiter *)
}

type row_level_permission_tag_configuration = {
  status : string prop;  (** status *)
  tag_rules : row_level_permission_tag_configuration__tag_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tag_rules *)
}

type column_level_permission_rules

val column_level_permission_rules :
  unit -> column_level_permission_rules

type aws_quicksight_data_set

val aws_quicksight_data_set :
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?column_level_permission_rules:column_level_permission_rules list ->
  data_set_id:string prop ->
  unit ->
  aws_quicksight_data_set

val yojson_of_aws_quicksight_data_set :
  aws_quicksight_data_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  aws_account_id : string prop;
  column_groups : column_groups list prop;
  data_set_id : string prop;
  data_set_usage_configuration :
    data_set_usage_configuration list prop;
  field_folders : field_folders list prop;
  id : string prop;
  import_mode : string prop;
  logical_table_map : logical_table_map list prop;
  name : string prop;
  permissions : permissions list prop;
  physical_table_map : physical_table_map list prop;
  row_level_permission_data_set :
    row_level_permission_data_set list prop;
  row_level_permission_tag_configuration :
    row_level_permission_tag_configuration list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?column_level_permission_rules:column_level_permission_rules list ->
  data_set_id:string prop ->
  string ->
  t

val make :
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?column_level_permission_rules:column_level_permission_rules list ->
  data_set_id:string prop ->
  string ->
  t Tf_core.resource
