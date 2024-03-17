(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_data_set__column_groups__geo_spatial_column_group = {
  columns: string  prop list;  (** columns *)
  country_code: string prop;  (** country_code *)
  name: string prop;  (** name *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__column_groups__geo_spatial_column_group *)

type aws_quicksight_data_set__column_groups = {
  geo_spatial_column_group: aws_quicksight_data_set__column_groups__geo_spatial_column_group list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__column_groups *)

type aws_quicksight_data_set__column_level_permission_rules = {
  column_names: string   prop list option; [@option] (** column_names *)
  principals: string   prop list option; [@option] (** principals *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__column_level_permission_rules *)

type aws_quicksight_data_set__data_set_usage_configuration = {
  disable_use_as_direct_query_source: bool  prop option; [@option] (** disable_use_as_direct_query_source *)
  disable_use_as_imported_source: bool  prop option; [@option] (** disable_use_as_imported_source *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__data_set_usage_configuration *)

type aws_quicksight_data_set__field_folders = {
  columns: string   prop list option; [@option] (** columns *)
  description: string  prop option; [@option] (** description *)
  field_folders_id: string prop;  (** field_folders_id *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__field_folders *)

type aws_quicksight_data_set__logical_table_map__data_transforms__cast_column_type_operation = {
  column_name: string prop;  (** column_name *)
  format: string  prop option; [@option] (** format *)
  new_column_type: string prop;  (** new_column_type *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__cast_column_type_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation__columns = {
  column_id: string prop;  (** column_id *)
  column_name: string prop;  (** column_name *)
  expression: string prop;  (** expression *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation__columns *)

type aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation = {
  columns: aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation__columns list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__create_columns_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__filter_operation = {
  condition_expression: string prop;  (** condition_expression *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__filter_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__project_operation = {
  projected_columns: string  prop list;  (** projected_columns *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__project_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__rename_column_operation = {
  column_name: string prop;  (** column_name *)
  new_column_name: string prop;  (** new_column_name *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__rename_column_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags__column_description = {
  text: string  prop option; [@option] (** text *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags__column_description *)

type aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags = {
  column_geographic_role: string  prop option; [@option] (** column_geographic_role *)
  column_description: aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags__column_description list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags *)

type aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation = {
  column_name: string prop;  (** column_name *)
  tags: aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation__tags list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__data_transforms__tag_column_operation *)

type aws_quicksight_data_set__logical_table_map__data_transforms__untag_column_operation = {
  column_name: string prop;  (** column_name *)
  tag_names: string  prop list;  (** tag_names *)
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
  unique_key: bool  prop option; [@option] (** unique_key *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__source__join_instruction__left_join_key_properties *)

type aws_quicksight_data_set__logical_table_map__source__join_instruction__right_join_key_properties = {
  unique_key: bool  prop option; [@option] (** unique_key *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__source__join_instruction__right_join_key_properties *)

type aws_quicksight_data_set__logical_table_map__source__join_instruction = {
  left_operand: string prop;  (** left_operand *)
  on_clause: string prop;  (** on_clause *)
  right_operand: string prop;  (** right_operand *)
  type_: string prop; [@key "type"] (** type *)
  left_join_key_properties: aws_quicksight_data_set__logical_table_map__source__join_instruction__left_join_key_properties list;
  right_join_key_properties: aws_quicksight_data_set__logical_table_map__source__join_instruction__right_join_key_properties list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__source__join_instruction *)

type aws_quicksight_data_set__logical_table_map__source = {
  data_set_arn: string  prop option; [@option] (** data_set_arn *)
  physical_table_id: string  prop option; [@option] (** physical_table_id *)
  join_instruction: aws_quicksight_data_set__logical_table_map__source__join_instruction list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map__source *)

type aws_quicksight_data_set__logical_table_map = {
  alias: string prop;  (** alias *)
  logical_table_map_id: string prop;  (** logical_table_map_id *)
  data_transforms: aws_quicksight_data_set__logical_table_map__data_transforms list;
  source: aws_quicksight_data_set__logical_table_map__source list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__logical_table_map *)

type aws_quicksight_data_set__permissions = {
  actions: string  prop list;  (** actions *)
  principal: string prop;  (** principal *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__permissions *)

type aws_quicksight_data_set__physical_table_map__custom_sql__columns = {
  name: string prop;  (** name *)
  type_: string prop; [@key "type"] (** type *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__custom_sql__columns *)

type aws_quicksight_data_set__physical_table_map__custom_sql = {
  data_source_arn: string prop;  (** data_source_arn *)
  name: string prop;  (** name *)
  sql_query: string prop;  (** sql_query *)
  columns: aws_quicksight_data_set__physical_table_map__custom_sql__columns list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__custom_sql *)

type aws_quicksight_data_set__physical_table_map__relational_table__input_columns = {
  name: string prop;  (** name *)
  type_: string prop; [@key "type"] (** type *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__relational_table__input_columns *)

type aws_quicksight_data_set__physical_table_map__relational_table = {
  catalog: string  prop option; [@option] (** catalog *)
  data_source_arn: string prop;  (** data_source_arn *)
  name: string prop;  (** name *)
  schema: string  prop option; [@option] (** schema *)
  input_columns: aws_quicksight_data_set__physical_table_map__relational_table__input_columns list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__relational_table *)

type aws_quicksight_data_set__physical_table_map__s3_source__input_columns = {
  name: string prop;  (** name *)
  type_: string prop; [@key "type"] (** type *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__s3_source__input_columns *)

type aws_quicksight_data_set__physical_table_map__s3_source__upload_settings = {
  contains_header: bool  prop option; [@option] (** contains_header *)
  delimiter: string  prop option; [@option] (** delimiter *)
  format: string  prop option; [@option] (** format *)
  start_from_row: float  prop option; [@option] (** start_from_row *)
  text_qualifier: string  prop option; [@option] (** text_qualifier *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__s3_source__upload_settings *)

type aws_quicksight_data_set__physical_table_map__s3_source = {
  data_source_arn: string prop;  (** data_source_arn *)
  input_columns: aws_quicksight_data_set__physical_table_map__s3_source__input_columns list;
  upload_settings: aws_quicksight_data_set__physical_table_map__s3_source__upload_settings list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map__s3_source *)

type aws_quicksight_data_set__physical_table_map = {
  physical_table_map_id: string prop;  (** physical_table_map_id *)
  custom_sql: aws_quicksight_data_set__physical_table_map__custom_sql list;
  relational_table: aws_quicksight_data_set__physical_table_map__relational_table list;
  s3_source: aws_quicksight_data_set__physical_table_map__s3_source list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__physical_table_map *)

type aws_quicksight_data_set__refresh_properties__refresh_configuration__incremental_refresh__lookback_window = {
  column_name: string prop;  (** column_name *)
  size: float prop;  (** size *)
  size_unit: string prop;  (** size_unit *)
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
  arn: string prop;  (** arn *)
  format_version: string  prop option; [@option] (** format_version *)
  namespace: string  prop option; [@option] (** namespace *)
  permission_policy: string prop;  (** permission_policy *)
  status: string  prop option; [@option] (** status *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__row_level_permission_data_set *)

type aws_quicksight_data_set__row_level_permission_tag_configuration__tag_rules = {
  column_name: string prop;  (** column_name *)
  match_all_value: string  prop option; [@option] (** match_all_value *)
  tag_key: string prop;  (** tag_key *)
  tag_multi_value_delimiter: string  prop option; [@option] (** tag_multi_value_delimiter *)
} [@@deriving yojson_of]
(** aws_quicksight_data_set__row_level_permission_tag_configuration__tag_rules *)

type aws_quicksight_data_set__row_level_permission_tag_configuration = {
  status: string  prop option; [@option] (** status *)
  tag_rules: aws_quicksight_data_set__row_level_permission_tag_configuration__tag_rules list;
} [@@deriving yojson_of]
(** aws_quicksight_data_set__row_level_permission_tag_configuration *)

type aws_quicksight_data_set__output_columns = {
  description: string prop;  (** description *)
  name: string prop;  (** name *)
  type_: string prop; [@key "type"] (** type *)
} [@@deriving yojson_of]
type aws_quicksight_data_set = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  data_set_id: string prop;  (** data_set_id *)
  id: string  prop option; [@option] (** id *)
  import_mode: string prop;  (** import_mode *)
  name: string prop;  (** name *)
  tags: (string * string   prop) list option; [@option] (** tags *)
  tags_all: (string * string   prop) list option; [@option] (** tags_all *)
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

type t = {
  arn: string prop;
  aws_account_id: string prop;
  data_set_id: string prop;
  id: string prop;
  import_mode: string prop;
  name: string prop;
  output_columns: aws_quicksight_data_set__output_columns list prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
}

let aws_quicksight_data_set ?aws_account_id ?id ?tags ?tags_all  ~data_set_id ~import_mode ~name ~column_groups ~column_level_permission_rules ~data_set_usage_configuration ~field_folders ~logical_table_map ~permissions ~physical_table_map ~refresh_properties ~row_level_permission_data_set ~row_level_permission_tag_configuration __resource_id =
  let __resource_type = "aws_quicksight_data_set" in
  let __resource = ({
    aws_account_id;
    data_set_id;
    id;
    import_mode;
    name;
    tags;
    tags_all;
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
  } : aws_quicksight_data_set) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_data_set __resource);
  let __resource_attributes = ({
    arn = Prop.computed __resource_type __resource_id "arn";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    data_set_id = Prop.computed __resource_type __resource_id "data_set_id";
    id = Prop.computed __resource_type __resource_id "id";
    import_mode = Prop.computed __resource_type __resource_id "import_mode";
    name = Prop.computed __resource_type __resource_id "name";
    output_columns = Prop.computed __resource_type __resource_id "output_columns";
    tags = Prop.computed __resource_type __resource_id "tags";
    tags_all = Prop.computed __resource_type __resource_id "tags_all";
  } : t) in
  __resource_attributes;;

