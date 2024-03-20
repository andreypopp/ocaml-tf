(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type column_groups__geo_spatial_column_group = {
  columns: string  prop list; 
  country_code: string prop; 
  name: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type column_groups = {
  geo_spatial_column_group: column_groups__geo_spatial_column_group list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type column_level_permission_rules = {
  column_names: string   prop list option; [@option]
  principals: string   prop list option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type data_set_usage_configuration = {
  disable_use_as_direct_query_source: bool  prop option; [@option]
  disable_use_as_imported_source: bool  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type field_folders = {
  columns: string   prop list option; [@option]
  description: string  prop option; [@option]
  field_folders_id: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__cast_column_type_operation = {
  column_name: string prop; 
  format: string  prop option; [@option]
  new_column_type: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__create_columns_operation__columns = {
  column_id: string prop; 
  column_name: string prop; 
  expression: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__create_columns_operation = {
  columns: logical_table_map__data_transforms__create_columns_operation__columns list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__filter_operation = {
  condition_expression: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__project_operation = {
  projected_columns: string  prop list; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__rename_column_operation = {
  column_name: string prop; 
  new_column_name: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__tag_column_operation__tags__column_description = {
  text: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__tag_column_operation__tags = {
  column_geographic_role: string  prop option; [@option]
  column_description: logical_table_map__data_transforms__tag_column_operation__tags__column_description list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__tag_column_operation = {
  column_name: string prop; 
  tags: logical_table_map__data_transforms__tag_column_operation__tags list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms__untag_column_operation = {
  column_name: string prop; 
  tag_names: string  prop list; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__data_transforms = {
  cast_column_type_operation: logical_table_map__data_transforms__cast_column_type_operation list;
  create_columns_operation: logical_table_map__data_transforms__create_columns_operation list;
  filter_operation: logical_table_map__data_transforms__filter_operation list;
  project_operation: logical_table_map__data_transforms__project_operation list;
  rename_column_operation: logical_table_map__data_transforms__rename_column_operation list;
  tag_column_operation: logical_table_map__data_transforms__tag_column_operation list;
  untag_column_operation: logical_table_map__data_transforms__untag_column_operation list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__source__join_instruction__left_join_key_properties = {
  unique_key: bool  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__source__join_instruction__right_join_key_properties = {
  unique_key: bool  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__source__join_instruction = {
  left_operand: string prop; 
  on_clause: string prop; 
  right_operand: string prop; 
  type_: string prop; [@key "type"]
  left_join_key_properties: logical_table_map__source__join_instruction__left_join_key_properties list;
  right_join_key_properties: logical_table_map__source__join_instruction__right_join_key_properties list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map__source = {
  data_set_arn: string  prop option; [@option]
  physical_table_id: string  prop option; [@option]
  join_instruction: logical_table_map__source__join_instruction list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logical_table_map = {
  alias: string prop; 
  logical_table_map_id: string prop; 
  data_transforms: logical_table_map__data_transforms list;
  source: logical_table_map__source list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type permissions = {
  actions: string  prop list; 
  principal: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type physical_table_map__custom_sql__columns = {
  name: string prop; 
  type_: string prop; [@key "type"]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type physical_table_map__custom_sql = {
  data_source_arn: string prop; 
  name: string prop; 
  sql_query: string prop; 
  columns: physical_table_map__custom_sql__columns list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type physical_table_map__relational_table__input_columns = {
  name: string prop; 
  type_: string prop; [@key "type"]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type physical_table_map__relational_table = {
  catalog: string  prop option; [@option]
  data_source_arn: string prop; 
  name: string prop; 
  schema: string  prop option; [@option]
  input_columns: physical_table_map__relational_table__input_columns list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type physical_table_map__s3_source__input_columns = {
  name: string prop; 
  type_: string prop; [@key "type"]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type physical_table_map__s3_source__upload_settings = {
  contains_header: bool  prop option; [@option]
  delimiter: string  prop option; [@option]
  format: string  prop option; [@option]
  start_from_row: float  prop option; [@option]
  text_qualifier: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type physical_table_map__s3_source = {
  data_source_arn: string prop; 
  input_columns: physical_table_map__s3_source__input_columns list;
  upload_settings: physical_table_map__s3_source__upload_settings list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type physical_table_map = {
  physical_table_map_id: string prop; 
  custom_sql: physical_table_map__custom_sql list;
  relational_table: physical_table_map__relational_table list;
  s3_source: physical_table_map__s3_source list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type refresh_properties__refresh_configuration__incremental_refresh__lookback_window = {
  column_name: string prop; 
  size: float prop; 
  size_unit: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type refresh_properties__refresh_configuration__incremental_refresh = {
  lookback_window: refresh_properties__refresh_configuration__incremental_refresh__lookback_window list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type refresh_properties__refresh_configuration = {
  incremental_refresh: refresh_properties__refresh_configuration__incremental_refresh list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type refresh_properties = {
  refresh_configuration: refresh_properties__refresh_configuration list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type row_level_permission_data_set = {
  arn: string prop; 
  format_version: string  prop option; [@option]
  namespace: string  prop option; [@option]
  permission_policy: string prop; 
  status: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type row_level_permission_tag_configuration__tag_rules = {
  column_name: string prop; 
  match_all_value: string  prop option; [@option]
  tag_key: string prop; 
  tag_multi_value_delimiter: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type row_level_permission_tag_configuration = {
  status: string  prop option; [@option]
  tag_rules: row_level_permission_tag_configuration__tag_rules list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type output_columns = {
  description: string prop; 
  name: string prop; 
  type_: string prop; [@key "type"]
} [@@deriving_inline yojson_of]
[@@@deriving.end]
type aws_quicksight_data_set = {
  aws_account_id: string  prop option; [@option]
  data_set_id: string prop; 
  id: string  prop option; [@option]
  import_mode: string prop; 
  name: string prop; 
  tags: (string * string   prop) list option; [@option]
  tags_all: (string * string   prop) list option; [@option]
  column_groups: column_groups list;
  column_level_permission_rules: column_level_permission_rules list;
  data_set_usage_configuration: data_set_usage_configuration list;
  field_folders: field_folders list;
  logical_table_map: logical_table_map list;
  permissions: permissions list;
  physical_table_map: physical_table_map list;
  refresh_properties: refresh_properties list;
  row_level_permission_data_set: row_level_permission_data_set list;
  row_level_permission_tag_configuration: row_level_permission_tag_configuration list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let column_groups__geo_spatial_column_group ~columns ~country_code ~name () =
  ({
    columns;
    country_code;
    name;
  } : column_groups__geo_spatial_column_group);;

let column_groups ~geo_spatial_column_group () =
  ({
    geo_spatial_column_group;
  } : column_groups);;

let column_level_permission_rules ?column_names ?principals () =
  ({
    column_names;
    principals;
  } : column_level_permission_rules);;

let data_set_usage_configuration ?disable_use_as_direct_query_source ?disable_use_as_imported_source () =
  ({
    disable_use_as_direct_query_source;
    disable_use_as_imported_source;
  } : data_set_usage_configuration);;

let field_folders ?columns ?description ~field_folders_id () =
  ({
    columns;
    description;
    field_folders_id;
  } : field_folders);;

let logical_table_map__data_transforms__cast_column_type_operation ?format ~column_name ~new_column_type () =
  ({
    column_name;
    format;
    new_column_type;
  } : logical_table_map__data_transforms__cast_column_type_operation);;

let logical_table_map__data_transforms__create_columns_operation__columns ~column_id ~column_name ~expression () =
  ({
    column_id;
    column_name;
    expression;
  } : logical_table_map__data_transforms__create_columns_operation__columns);;

let logical_table_map__data_transforms__create_columns_operation ~columns () =
  ({
    columns;
  } : logical_table_map__data_transforms__create_columns_operation);;

let logical_table_map__data_transforms__filter_operation ~condition_expression () =
  ({
    condition_expression;
  } : logical_table_map__data_transforms__filter_operation);;

let logical_table_map__data_transforms__project_operation ~projected_columns () =
  ({
    projected_columns;
  } : logical_table_map__data_transforms__project_operation);;

let logical_table_map__data_transforms__rename_column_operation ~column_name ~new_column_name () =
  ({
    column_name;
    new_column_name;
  } : logical_table_map__data_transforms__rename_column_operation);;

let logical_table_map__data_transforms__tag_column_operation__tags__column_description ?text () =
  ({
    text;
  } : logical_table_map__data_transforms__tag_column_operation__tags__column_description);;

let logical_table_map__data_transforms__tag_column_operation__tags ?column_geographic_role ~column_description () =
  ({
    column_geographic_role;
    column_description;
  } : logical_table_map__data_transforms__tag_column_operation__tags);;

let logical_table_map__data_transforms__tag_column_operation ~column_name ~tags () =
  ({
    column_name;
    tags;
  } : logical_table_map__data_transforms__tag_column_operation);;

let logical_table_map__data_transforms__untag_column_operation ~column_name ~tag_names () =
  ({
    column_name;
    tag_names;
  } : logical_table_map__data_transforms__untag_column_operation);;

let logical_table_map__data_transforms ~cast_column_type_operation ~create_columns_operation ~filter_operation ~project_operation ~rename_column_operation ~tag_column_operation ~untag_column_operation () =
  ({
    cast_column_type_operation;
    create_columns_operation;
    filter_operation;
    project_operation;
    rename_column_operation;
    tag_column_operation;
    untag_column_operation;
  } : logical_table_map__data_transforms);;

let logical_table_map__source__join_instruction__left_join_key_properties ?unique_key () =
  ({
    unique_key;
  } : logical_table_map__source__join_instruction__left_join_key_properties);;

let logical_table_map__source__join_instruction__right_join_key_properties ?unique_key () =
  ({
    unique_key;
  } : logical_table_map__source__join_instruction__right_join_key_properties);;

let logical_table_map__source__join_instruction ~left_operand ~on_clause ~right_operand ~type_ ~left_join_key_properties ~right_join_key_properties () =
  ({
    left_operand;
    on_clause;
    right_operand;
    type_;
    left_join_key_properties;
    right_join_key_properties;
  } : logical_table_map__source__join_instruction);;

let logical_table_map__source ?data_set_arn ?physical_table_id ~join_instruction () =
  ({
    data_set_arn;
    physical_table_id;
    join_instruction;
  } : logical_table_map__source);;

let logical_table_map ~alias ~logical_table_map_id ~data_transforms ~source () =
  ({
    alias;
    logical_table_map_id;
    data_transforms;
    source;
  } : logical_table_map);;

let permissions ~actions ~principal () =
  ({
    actions;
    principal;
  } : permissions);;

let physical_table_map__custom_sql__columns ~name ~type_ () =
  ({
    name;
    type_;
  } : physical_table_map__custom_sql__columns);;

let physical_table_map__custom_sql ~data_source_arn ~name ~sql_query ~columns () =
  ({
    data_source_arn;
    name;
    sql_query;
    columns;
  } : physical_table_map__custom_sql);;

let physical_table_map__relational_table__input_columns ~name ~type_ () =
  ({
    name;
    type_;
  } : physical_table_map__relational_table__input_columns);;

let physical_table_map__relational_table ?catalog ?schema ~data_source_arn ~name ~input_columns () =
  ({
    catalog;
    data_source_arn;
    name;
    schema;
    input_columns;
  } : physical_table_map__relational_table);;

let physical_table_map__s3_source__input_columns ~name ~type_ () =
  ({
    name;
    type_;
  } : physical_table_map__s3_source__input_columns);;

let physical_table_map__s3_source__upload_settings ?contains_header ?delimiter ?format ?start_from_row ?text_qualifier () =
  ({
    contains_header;
    delimiter;
    format;
    start_from_row;
    text_qualifier;
  } : physical_table_map__s3_source__upload_settings);;

let physical_table_map__s3_source ~data_source_arn ~input_columns ~upload_settings () =
  ({
    data_source_arn;
    input_columns;
    upload_settings;
  } : physical_table_map__s3_source);;

let physical_table_map ~physical_table_map_id ~custom_sql ~relational_table ~s3_source () =
  ({
    physical_table_map_id;
    custom_sql;
    relational_table;
    s3_source;
  } : physical_table_map);;

let refresh_properties__refresh_configuration__incremental_refresh__lookback_window ~column_name ~size ~size_unit () =
  ({
    column_name;
    size;
    size_unit;
  } : refresh_properties__refresh_configuration__incremental_refresh__lookback_window);;

let refresh_properties__refresh_configuration__incremental_refresh ~lookback_window () =
  ({
    lookback_window;
  } : refresh_properties__refresh_configuration__incremental_refresh);;

let refresh_properties__refresh_configuration ~incremental_refresh () =
  ({
    incremental_refresh;
  } : refresh_properties__refresh_configuration);;

let refresh_properties ~refresh_configuration () =
  ({
    refresh_configuration;
  } : refresh_properties);;

let row_level_permission_data_set ?format_version ?namespace ?status ~arn ~permission_policy () =
  ({
    arn;
    format_version;
    namespace;
    permission_policy;
    status;
  } : row_level_permission_data_set);;

let row_level_permission_tag_configuration__tag_rules ?match_all_value ?tag_multi_value_delimiter ~column_name ~tag_key () =
  ({
    column_name;
    match_all_value;
    tag_key;
    tag_multi_value_delimiter;
  } : row_level_permission_tag_configuration__tag_rules);;

let row_level_permission_tag_configuration ?status ~tag_rules () =
  ({
    status;
    tag_rules;
  } : row_level_permission_tag_configuration);;

let aws_quicksight_data_set ?aws_account_id ?id ?tags ?tags_all ~data_set_id ~import_mode ~name ~column_groups ~column_level_permission_rules ~data_set_usage_configuration ~field_folders ~logical_table_map ~permissions ~physical_table_map ~refresh_properties ~row_level_permission_data_set ~row_level_permission_tag_configuration () =
  ({
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
  } : aws_quicksight_data_set);;

type t = {
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

let make ?aws_account_id ?id ?tags ?tags_all ~data_set_id ~import_mode ~name ~column_groups ~column_level_permission_rules ~data_set_usage_configuration ~field_folders ~logical_table_map ~permissions ~physical_table_map ~refresh_properties ~row_level_permission_data_set ~row_level_permission_tag_configuration __id =
  let __type = "aws_quicksight_data_set" in
  let __attrs = ({
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    data_set_id = Prop.computed __type __id "data_set_id";
    id = Prop.computed __type __id "id";
    import_mode = Prop.computed __type __id "import_mode";
    name = Prop.computed __type __id "name";
    output_columns = Prop.computed __type __id "output_columns";
    tags = Prop.computed __type __id "tags";
    tags_all = Prop.computed __type __id "tags_all";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_data_set (aws_quicksight_data_set ?aws_account_id ?id ?tags ?tags_all ~data_set_id ~import_mode ~name ~column_groups ~column_level_permission_rules ~data_set_usage_configuration ~field_folders ~logical_table_map ~permissions ~physical_table_map ~refresh_properties ~row_level_permission_data_set ~row_level_permission_tag_configuration ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?id ?tags ?tags_all ~data_set_id ~import_mode ~name ~column_groups ~column_level_permission_rules ~data_set_usage_configuration ~field_folders ~logical_table_map ~permissions ~physical_table_map ~refresh_properties ~row_level_permission_data_set ~row_level_permission_tag_configuration __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?id ?tags ?tags_all ~data_set_id ~import_mode ~name ~column_groups ~column_level_permission_rules ~data_set_usage_configuration ~field_folders ~logical_table_map ~permissions ~physical_table_map ~refresh_properties ~row_level_permission_data_set ~row_level_permission_tag_configuration __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

