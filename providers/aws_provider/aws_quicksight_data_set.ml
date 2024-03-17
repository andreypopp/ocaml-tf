(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_data_set__column_groups__geo_spatial_column_group = {
  columns: string list;  (** columns *)
  country_code: string;  (** country_code *)
  name: string;  (** name *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__column_groups__geo_spatial_column_group *)

type aws_quicksight_data_set__column_groups = {
  geo_spatial_column_group: aws_quicksight_data_set__column_groups__geo_spatial_column_group list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__column_groups *)

type aws_quicksight_data_set__column_level_permission_rules = {
  column_names: string list option; [@option] (** column_names *)
  principals: string list option; [@option] (** principals *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__column_level_permission_rules *)

type aws_quicksight_data_set__data_set_usage_configuration = {
  disable_use_as_direct_query_source: bool option; [@option] (** disable_use_as_direct_query_source *)
  disable_use_as_imported_source: bool option; [@option] (** disable_use_as_imported_source *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__data_set_usage_configuration *)

type aws_quicksight_data_set__field_folders = {
  columns: string list option; [@option] (** columns *)
  description: string option; [@option] (** description *)
  field_folders_id: string;  (** field_folders_id *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__field_folders *)

type aws_quicksight_data_set__logical_table_map__data_transforms__cast_column_type_operation = {
  column_name: string;  (** column_name *)
  format: string option; [@option] (** format *)
  new_column_type: string;  (** new_column_type *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__cast_column_type_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation__columns = {
  column_id: string;  (** column_id *)
  column_name: string;  (** column_name *)
  expression: string;  (** expression *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation__columns *)

type aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation = {
  columns: aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation__columns list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__filter_operation = {
  condition_expression: string;  (** condition_expression *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__filter_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__project_operation = {
  projected_columns: string list;  (** projected_columns *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__project_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__rename_column_operation = {
  column_name: string;  (** column_name *)
  new_column_name: string;  (** new_column_name *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__rename_column_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags__column_description = {
  text: string option; [@option] (** text *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags__column_description *)

type aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags = {
  column_geographic_role: string option; [@option] (** column_geographic_role *)
  column_description: aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags__column_description list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags *)

type aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation = {
  column_name: string;  (** column_name *)
  tags: aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__untag_column_operation = {
  column_name: string;  (** column_name *)
  tag_names: string list;  (** tag_names *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__untag_column_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms = {
  cast_column_type_operation: aws_quicksight_data_set__logical_table_map__data_transforms__cast_column_type_operation list;
  create_columns_operation: aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation list;
  filter_operation: aws_quicksight_data_set__logical_table_map__data_transforms__filter_operation list;
  project_operation: aws_quicksight_data_set__logical_table_map__data_transforms__project_operation list;
  rename_column_operation: aws_quicksight_data_set__logical_table_map__data_transforms__rename_column_operation list;
  tag_column_operation: aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation list;
  untag_column_operation: aws_quicksight_data_set__logical_table_map__data_transforms__untag_column_operation list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms *)

type aws_quicksight_data_set__logical_table_map__source__join_instruction__left_join_key_properties = {
  unique_key: bool option; [@option] (** unique_key *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__source__join_instruction__left_join_key_properties *)

type aws_quicksight_data_set__logical_table_map__source__join_instruction__right_join_key_properties = {
  unique_key: bool option; [@option] (** unique_key *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__source__join_instruction__right_join_key_properties *)

type aws_quicksight_data_set__logical_table_map__source__join_instruction = {
  left_operand: string;  (** left_operand *)
  on_clause: string;  (** on_clause *)
  right_operand: string;  (** right_operand *)
  type_: string; [@key "type"] (** type *)
  left_join_key_properties: aws_quicksight_data_set__logical_table_map__source__join_instruction__left_join_key_properties list;
  right_join_key_properties: aws_quicksight_data_set__logical_table_map__source__join_instruction__right_join_key_properties list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__source__join_instruction *)

type aws_quicksight_data_set__logical_table_map__source = {
  data_set_arn: string option; [@option] (** data_set_arn *)
  physical_table_id: string option; [@option] (** physical_table_id *)
  join_instruction: aws_quicksight_data_set__logical_table_map__source__join_instruction list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__source *)

type aws_quicksight_data_set__logical_table_map = {
  alias: string;  (** alias *)
  logical_table_map_id: string;  (** logical_table_map_id *)
  data_transforms: aws_quicksight_data_set__logical_table_map__data_transforms list;
  source: aws_quicksight_data_set__logical_table_map__source list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map *)

type aws_quicksight_data_set__permissions = {
  actions: string list;  (** actions *)
  principal: string;  (** principal *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__permissions *)

type aws_quicksight_data_set__physical_table_map__custom_sql__columns = {
  name: string;  (** name *)
  type_: string; [@key "type"] (** type *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__custom_sql__columns *)

type aws_quicksight_data_set__physical_table_map__custom_sql = {
  data_source_arn: string;  (** data_source_arn *)
  name: string;  (** name *)
  sql_query: string;  (** sql_query *)
  columns: aws_quicksight_data_set__physical_table_map__custom_sql__columns list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__custom_sql *)

type aws_quicksight_data_set__physical_table_map__relational_table__input_columns = {
  name: string;  (** name *)
  type_: string; [@key "type"] (** type *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__relational_table__input_columns *)

type aws_quicksight_data_set__physical_table_map__relational_table = {
  catalog: string option; [@option] (** catalog *)
  data_source_arn: string;  (** data_source_arn *)
  name: string;  (** name *)
  schema: string option; [@option] (** schema *)
  input_columns: aws_quicksight_data_set__physical_table_map__relational_table__input_columns list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__relational_table *)

type aws_quicksight_data_set__physical_table_map__s3_source__input_columns = {
  name: string;  (** name *)
  type_: string; [@key "type"] (** type *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__s3_source__input_columns *)

type aws_quicksight_data_set__physical_table_map__s3_source__upload_settings = {
  contains_header: bool option; [@option] (** contains_header *)
  delimiter: string option; [@option] (** delimiter *)
  format: string option; [@option] (** format *)
  start_from_row: float option; [@option] (** start_from_row *)
  text_qualifier: string option; [@option] (** text_qualifier *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__s3_source__upload_settings *)

type aws_quicksight_data_set__physical_table_map__s3_source = {
  data_source_arn: string;  (** data_source_arn *)
  input_columns: aws_quicksight_data_set__physical_table_map__s3_source__input_columns list;
  upload_settings: aws_quicksight_data_set__physical_table_map__s3_source__upload_settings list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__s3_source *)

type aws_quicksight_data_set__physical_table_map = {
  physical_table_map_id: string;  (** physical_table_map_id *)
  custom_sql: aws_quicksight_data_set__physical_table_map__custom_sql list;
  relational_table: aws_quicksight_data_set__physical_table_map__relational_table list;
  s3_source: aws_quicksight_data_set__physical_table_map__s3_source list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map *)

type aws_quicksight_data_set__refresh_properties__refresh_configuration__incremental_refresh__lookback_window = {
  column_name: string;  (** column_name *)
  size: float;  (** size *)
  size_unit: string;  (** size_unit *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__refresh_properties__refresh_configuration__incremental_refresh__lookback_window *)

type aws_quicksight_data_set__refresh_properties__refresh_configuration__incremental_refresh = {
  lookback_window: aws_quicksight_data_set__refresh_properties__refresh_configuration__incremental_refresh__lookback_window list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__refresh_properties__refresh_configuration__incremental_refresh *)

type aws_quicksight_data_set__refresh_properties__refresh_configuration = {
  incremental_refresh: aws_quicksight_data_set__refresh_properties__refresh_configuration__incremental_refresh list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__refresh_properties__refresh_configuration *)

type aws_quicksight_data_set__refresh_properties = {
  refresh_configuration: aws_quicksight_data_set__refresh_properties__refresh_configuration list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__refresh_properties *)

type aws_quicksight_data_set__row_level_permission_data_set = {
  arn: string;  (** arn *)
  format_version: string option; [@option] (** format_version *)
  namespace: string option; [@option] (** namespace *)
  permission_policy: string;  (** permission_policy *)
  status: string option; [@option] (** status *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__row_level_permission_data_set *)

type aws_quicksight_data_set__row_level_permission_tag_configuration__tag_rules = {
  column_name: string;  (** column_name *)
  match_all_value: string option; [@option] (** match_all_value *)
  tag_key: string;  (** tag_key *)
  tag_multi_value_delimiter: string option; [@option] (** tag_multi_value_delimiter *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__row_level_permission_tag_configuration__tag_rules *)

type aws_quicksight_data_set__row_level_permission_tag_configuration = {
  status: string option; [@option] (** status *)
  tag_rules: aws_quicksight_data_set__row_level_permission_tag_configuration__tag_rules list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__row_level_permission_tag_configuration *)

type aws_quicksight_data_set__output_columns = {
  description: string;  (** description *)
  name: string;  (** name *)
  type_: string; [@key "type"] (** type *)
} [@@deriving yojson_of]
type aws_quicksight_data_set = {
  data_set_id: string;  (** data_set_id *)
  import_mode: string;  (** import_mode *)
  name: string;  (** name *)
  tags: (string * string) list option; [@option] (** tags *)
  column_groups: aws_quicksight_data_set__column_groups list;
  column_level_permission_rules: aws_quicksight_data_set__column_level_permission_rules list;
  data_set_usage_configuration: aws_quicksight_data_set__data_set_usage_configuration list;
  field_folders: aws_quicksight_data_set__field_folders list;
  logical_table_map: aws_quicksight_data_set__logical_table_map list;
  permissions: aws_quicksight_data_set__permissions list;
  physical_table_map: aws_quicksight_data_set__physical_table_map list;
  refresh_properties: aws_quicksight_data_set__refresh_properties list;
  row_level_permission_data_set: aws_quicksight_data_set__row_level_permission_data_set list;
  row_level_permission_tag_configuration: aws_quicksight_data_set__row_level_permission_tag_configuration list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set *)

let aws_quicksight_data_set ?tags  ~data_set_id ~import_mode ~name ~column_groups ~column_level_permission_rules ~data_set_usage_configuration ~field_folders ~logical_table_map ~permissions ~physical_table_map ~refresh_properties ~row_level_permission_data_set ~row_level_permission_tag_configuration __resource_id =
  let __resource_type = "aws_quicksight_data_set" in
  let __resource = {
    data_set_id;
    import_mode;
    name;
    tags;
    column_groups;
    column_level_permission_rules;
    data_set_usage_configuration;
    field_folders;
    logical_table_map;
    permissions;
    physical_table_map;
    refresh_properties;
    row_level_permission_data_set;
    row_level_permission_tag_configuration;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_data_set __resource);
  ()
  ;;

