(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type column_level_permission_rules = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : column_level_permission_rules) -> ()

let yojson_of_column_level_permission_rules =
  (yojson_of_unit
    : column_level_permission_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_column_level_permission_rules

[@@@deriving.end]

type column_groups__geo_spatial_column_group = {
  columns : string prop list;
  country_code : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : column_groups__geo_spatial_column_group) -> ()

let yojson_of_column_groups__geo_spatial_column_group =
  (function
   | {
       columns = v_columns;
       country_code = v_country_code;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country_code in
         ("country_code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_columns
         in
         ("columns", arg) :: bnds
       in
       `Assoc bnds
    : column_groups__geo_spatial_column_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_column_groups__geo_spatial_column_group

[@@@deriving.end]

type column_groups = {
  geo_spatial_column_group :
    column_groups__geo_spatial_column_group list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : column_groups) -> ()

let yojson_of_column_groups =
  (function
   | { geo_spatial_column_group = v_geo_spatial_column_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_column_groups__geo_spatial_column_group
             v_geo_spatial_column_group
         in
         ("geo_spatial_column_group", arg) :: bnds
       in
       `Assoc bnds
    : column_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_column_groups

[@@@deriving.end]

type data_set_usage_configuration = {
  disable_use_as_direct_query_source : bool prop;
  disable_use_as_imported_source : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_set_usage_configuration) -> ()

let yojson_of_data_set_usage_configuration =
  (function
   | {
       disable_use_as_direct_query_source =
         v_disable_use_as_direct_query_source;
       disable_use_as_imported_source =
         v_disable_use_as_imported_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_disable_use_as_imported_source
         in
         ("disable_use_as_imported_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_disable_use_as_direct_query_source
         in
         ("disable_use_as_direct_query_source", arg) :: bnds
       in
       `Assoc bnds
    : data_set_usage_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_set_usage_configuration

[@@@deriving.end]

type field_folders = {
  columns : string prop list;
  description : string prop;
  field_folders_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : field_folders) -> ()

let yojson_of_field_folders =
  (function
   | {
       columns = v_columns;
       description = v_description;
       field_folders_id = v_field_folders_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_field_folders_id
         in
         ("field_folders_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_columns
         in
         ("columns", arg) :: bnds
       in
       `Assoc bnds
    : field_folders -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_field_folders

[@@@deriving.end]

type logical_table_map__source__join_instruction__right_join_key_properties = {
  unique_key : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logical_table_map__source__join_instruction__right_join_key_properties) ->
  ()

let yojson_of_logical_table_map__source__join_instruction__right_join_key_properties
    =
  (function
   | { unique_key = v_unique_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_unique_key in
         ("unique_key", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__source__join_instruction__right_join_key_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__source__join_instruction__right_join_key_properties

[@@@deriving.end]

type logical_table_map__source__join_instruction__left_join_key_properties = {
  unique_key : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logical_table_map__source__join_instruction__left_join_key_properties) ->
  ()

let yojson_of_logical_table_map__source__join_instruction__left_join_key_properties
    =
  (function
   | { unique_key = v_unique_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_unique_key in
         ("unique_key", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__source__join_instruction__left_join_key_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__source__join_instruction__left_join_key_properties

[@@@deriving.end]

type logical_table_map__source__join_instruction = {
  left_join_key_properties :
    logical_table_map__source__join_instruction__left_join_key_properties
    list;
  left_operand : string prop;
  on_clause : string prop;
  right_join_key_properties :
    logical_table_map__source__join_instruction__right_join_key_properties
    list;
  right_operand : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logical_table_map__source__join_instruction) -> ()

let yojson_of_logical_table_map__source__join_instruction =
  (function
   | {
       left_join_key_properties = v_left_join_key_properties;
       left_operand = v_left_operand;
       on_clause = v_on_clause;
       right_join_key_properties = v_right_join_key_properties;
       right_operand = v_right_operand;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_right_operand in
         ("right_operand", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__source__join_instruction__right_join_key_properties
             v_right_join_key_properties
         in
         ("right_join_key_properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_on_clause in
         ("on_clause", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_left_operand in
         ("left_operand", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__source__join_instruction__left_join_key_properties
             v_left_join_key_properties
         in
         ("left_join_key_properties", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__source__join_instruction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logical_table_map__source__join_instruction

[@@@deriving.end]

type logical_table_map__source = {
  data_set_arn : string prop;
  join_instruction :
    logical_table_map__source__join_instruction list;
  physical_table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logical_table_map__source) -> ()

let yojson_of_logical_table_map__source =
  (function
   | {
       data_set_arn = v_data_set_arn;
       join_instruction = v_join_instruction;
       physical_table_id = v_physical_table_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_physical_table_id
         in
         ("physical_table_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__source__join_instruction
             v_join_instruction
         in
         ("join_instruction", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_set_arn in
         ("data_set_arn", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logical_table_map__source

[@@@deriving.end]

type logical_table_map__data_transforms__untag_column_operation = {
  column_name : string prop;
  tag_names : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : logical_table_map__data_transforms__untag_column_operation) ->
  ()

let yojson_of_logical_table_map__data_transforms__untag_column_operation
    =
  (function
   | { column_name = v_column_name; tag_names = v_tag_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_tag_names
         in
         ("tag_names", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__untag_column_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__untag_column_operation

[@@@deriving.end]

type logical_table_map__data_transforms__tag_column_operation__tags__column_description = {
  text : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logical_table_map__data_transforms__tag_column_operation__tags__column_description) ->
  ()

let yojson_of_logical_table_map__data_transforms__tag_column_operation__tags__column_description
    =
  (function
   | { text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__tag_column_operation__tags__column_description ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__tag_column_operation__tags__column_description

[@@@deriving.end]

type logical_table_map__data_transforms__tag_column_operation__tags = {
  column_description :
    logical_table_map__data_transforms__tag_column_operation__tags__column_description
    list;
  column_geographic_role : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logical_table_map__data_transforms__tag_column_operation__tags) ->
  ()

let yojson_of_logical_table_map__data_transforms__tag_column_operation__tags
    =
  (function
   | {
       column_description = v_column_description;
       column_geographic_role = v_column_geographic_role;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_column_geographic_role
         in
         ("column_geographic_role", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__tag_column_operation__tags__column_description
             v_column_description
         in
         ("column_description", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__tag_column_operation__tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__tag_column_operation__tags

[@@@deriving.end]

type logical_table_map__data_transforms__tag_column_operation = {
  column_name : string prop;
  tags :
    logical_table_map__data_transforms__tag_column_operation__tags
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : logical_table_map__data_transforms__tag_column_operation) ->
  ()

let yojson_of_logical_table_map__data_transforms__tag_column_operation
    =
  (function
   | { column_name = v_column_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__tag_column_operation__tags
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__tag_column_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__tag_column_operation

[@@@deriving.end]

type logical_table_map__data_transforms__rename_column_operation = {
  column_name : string prop;
  new_column_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logical_table_map__data_transforms__rename_column_operation) ->
  ()

let yojson_of_logical_table_map__data_transforms__rename_column_operation
    =
  (function
   | {
       column_name = v_column_name;
       new_column_name = v_new_column_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_new_column_name
         in
         ("new_column_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__rename_column_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__rename_column_operation

[@@@deriving.end]

type logical_table_map__data_transforms__project_operation = {
  projected_columns : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : logical_table_map__data_transforms__project_operation) ->
  ()

let yojson_of_logical_table_map__data_transforms__project_operation =
  (function
   | { projected_columns = v_projected_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_projected_columns
         in
         ("projected_columns", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__project_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__project_operation

[@@@deriving.end]

type logical_table_map__data_transforms__filter_operation = {
  condition_expression : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : logical_table_map__data_transforms__filter_operation) -> ()

let yojson_of_logical_table_map__data_transforms__filter_operation =
  (function
   | { condition_expression = v_condition_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_condition_expression
         in
         ("condition_expression", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__filter_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__filter_operation

[@@@deriving.end]

type logical_table_map__data_transforms__create_columns_operation__columns = {
  column_id : string prop;
  column_name : string prop;
  expression : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logical_table_map__data_transforms__create_columns_operation__columns) ->
  ()

let yojson_of_logical_table_map__data_transforms__create_columns_operation__columns
    =
  (function
   | {
       column_id = v_column_id;
       column_name = v_column_name;
       expression = v_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_id in
         ("column_id", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__create_columns_operation__columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__create_columns_operation__columns

[@@@deriving.end]

type logical_table_map__data_transforms__create_columns_operation = {
  columns :
    logical_table_map__data_transforms__create_columns_operation__columns
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logical_table_map__data_transforms__create_columns_operation) ->
  ()

let yojson_of_logical_table_map__data_transforms__create_columns_operation
    =
  (function
   | { columns = v_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__create_columns_operation__columns
             v_columns
         in
         ("columns", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__create_columns_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__create_columns_operation

[@@@deriving.end]

type logical_table_map__data_transforms__cast_column_type_operation = {
  column_name : string prop;
  format : string prop;
  new_column_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logical_table_map__data_transforms__cast_column_type_operation) ->
  ()

let yojson_of_logical_table_map__data_transforms__cast_column_type_operation
    =
  (function
   | {
       column_name = v_column_name;
       format = v_format;
       new_column_type = v_new_column_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_new_column_type
         in
         ("new_column_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms__cast_column_type_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logical_table_map__data_transforms__cast_column_type_operation

[@@@deriving.end]

type logical_table_map__data_transforms = {
  cast_column_type_operation :
    logical_table_map__data_transforms__cast_column_type_operation
    list;
  create_columns_operation :
    logical_table_map__data_transforms__create_columns_operation list;
  filter_operation :
    logical_table_map__data_transforms__filter_operation list;
  project_operation :
    logical_table_map__data_transforms__project_operation list;
  rename_column_operation :
    logical_table_map__data_transforms__rename_column_operation list;
  tag_column_operation :
    logical_table_map__data_transforms__tag_column_operation list;
  untag_column_operation :
    logical_table_map__data_transforms__untag_column_operation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logical_table_map__data_transforms) -> ()

let yojson_of_logical_table_map__data_transforms =
  (function
   | {
       cast_column_type_operation = v_cast_column_type_operation;
       create_columns_operation = v_create_columns_operation;
       filter_operation = v_filter_operation;
       project_operation = v_project_operation;
       rename_column_operation = v_rename_column_operation;
       tag_column_operation = v_tag_column_operation;
       untag_column_operation = v_untag_column_operation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__untag_column_operation
             v_untag_column_operation
         in
         ("untag_column_operation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__tag_column_operation
             v_tag_column_operation
         in
         ("tag_column_operation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__rename_column_operation
             v_rename_column_operation
         in
         ("rename_column_operation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__project_operation
             v_project_operation
         in
         ("project_operation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__filter_operation
             v_filter_operation
         in
         ("filter_operation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__create_columns_operation
             v_create_columns_operation
         in
         ("create_columns_operation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms__cast_column_type_operation
             v_cast_column_type_operation
         in
         ("cast_column_type_operation", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map__data_transforms ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logical_table_map__data_transforms

[@@@deriving.end]

type logical_table_map = {
  alias : string prop;
  data_transforms : logical_table_map__data_transforms list;
  logical_table_map_id : string prop;
  source : logical_table_map__source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logical_table_map) -> ()

let yojson_of_logical_table_map =
  (function
   | {
       alias = v_alias;
       data_transforms = v_data_transforms;
       logical_table_map_id = v_logical_table_map_id;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logical_table_map__source
             v_source
         in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logical_table_map_id
         in
         ("logical_table_map_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logical_table_map__data_transforms
             v_data_transforms
         in
         ("data_transforms", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias in
         ("alias", arg) :: bnds
       in
       `Assoc bnds
    : logical_table_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logical_table_map

[@@@deriving.end]

type permissions = {
  actions : string prop list;
  principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permissions) -> ()

let yojson_of_permissions =
  (function
   | { actions = v_actions; principal = v_principal } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_actions
         in
         ("actions", arg) :: bnds
       in
       `Assoc bnds
    : permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permissions

[@@@deriving.end]

type physical_table_map__s3_source__upload_settings = {
  contains_header : bool prop;
  delimiter : string prop;
  format : string prop;
  start_from_row : float prop;
  text_qualifier : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : physical_table_map__s3_source__upload_settings) -> ()

let yojson_of_physical_table_map__s3_source__upload_settings =
  (function
   | {
       contains_header = v_contains_header;
       delimiter = v_delimiter;
       format = v_format;
       start_from_row = v_start_from_row;
       text_qualifier = v_text_qualifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_text_qualifier
         in
         ("text_qualifier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start_from_row in
         ("start_from_row", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_delimiter in
         ("delimiter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_contains_header in
         ("contains_header", arg) :: bnds
       in
       `Assoc bnds
    : physical_table_map__s3_source__upload_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_table_map__s3_source__upload_settings

[@@@deriving.end]

type physical_table_map__s3_source__input_columns = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : physical_table_map__s3_source__input_columns) -> ()

let yojson_of_physical_table_map__s3_source__input_columns =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : physical_table_map__s3_source__input_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_table_map__s3_source__input_columns

[@@@deriving.end]

type physical_table_map__s3_source = {
  data_source_arn : string prop;
  input_columns : physical_table_map__s3_source__input_columns list;
  upload_settings :
    physical_table_map__s3_source__upload_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : physical_table_map__s3_source) -> ()

let yojson_of_physical_table_map__s3_source =
  (function
   | {
       data_source_arn = v_data_source_arn;
       input_columns = v_input_columns;
       upload_settings = v_upload_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_physical_table_map__s3_source__upload_settings
             v_upload_settings
         in
         ("upload_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_physical_table_map__s3_source__input_columns
             v_input_columns
         in
         ("input_columns", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_source_arn
         in
         ("data_source_arn", arg) :: bnds
       in
       `Assoc bnds
    : physical_table_map__s3_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_table_map__s3_source

[@@@deriving.end]

type physical_table_map__relational_table__input_columns = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : physical_table_map__relational_table__input_columns) -> ()

let yojson_of_physical_table_map__relational_table__input_columns =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : physical_table_map__relational_table__input_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_table_map__relational_table__input_columns

[@@@deriving.end]

type physical_table_map__relational_table = {
  catalog : string prop;
  data_source_arn : string prop;
  input_columns :
    physical_table_map__relational_table__input_columns list;
  name : string prop;
  schema : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : physical_table_map__relational_table) -> ()

let yojson_of_physical_table_map__relational_table =
  (function
   | {
       catalog = v_catalog;
       data_source_arn = v_data_source_arn;
       input_columns = v_input_columns;
       name = v_name;
       schema = v_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_physical_table_map__relational_table__input_columns
             v_input_columns
         in
         ("input_columns", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_source_arn
         in
         ("data_source_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_catalog in
         ("catalog", arg) :: bnds
       in
       `Assoc bnds
    : physical_table_map__relational_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_table_map__relational_table

[@@@deriving.end]

type physical_table_map__custom_sql__columns = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : physical_table_map__custom_sql__columns) -> ()

let yojson_of_physical_table_map__custom_sql__columns =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : physical_table_map__custom_sql__columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_table_map__custom_sql__columns

[@@@deriving.end]

type physical_table_map__custom_sql = {
  columns : physical_table_map__custom_sql__columns list;
  data_source_arn : string prop;
  name : string prop;
  sql_query : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : physical_table_map__custom_sql) -> ()

let yojson_of_physical_table_map__custom_sql =
  (function
   | {
       columns = v_columns;
       data_source_arn = v_data_source_arn;
       name = v_name;
       sql_query = v_sql_query;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sql_query in
         ("sql_query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_source_arn
         in
         ("data_source_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_physical_table_map__custom_sql__columns
             v_columns
         in
         ("columns", arg) :: bnds
       in
       `Assoc bnds
    : physical_table_map__custom_sql ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_table_map__custom_sql

[@@@deriving.end]

type physical_table_map = {
  custom_sql : physical_table_map__custom_sql list;
  physical_table_map_id : string prop;
  relational_table : physical_table_map__relational_table list;
  s3_source : physical_table_map__s3_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : physical_table_map) -> ()

let yojson_of_physical_table_map =
  (function
   | {
       custom_sql = v_custom_sql;
       physical_table_map_id = v_physical_table_map_id;
       relational_table = v_relational_table;
       s3_source = v_s3_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_physical_table_map__s3_source
             v_s3_source
         in
         ("s3_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_physical_table_map__relational_table
             v_relational_table
         in
         ("relational_table", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_physical_table_map_id
         in
         ("physical_table_map_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_physical_table_map__custom_sql
             v_custom_sql
         in
         ("custom_sql", arg) :: bnds
       in
       `Assoc bnds
    : physical_table_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_table_map

[@@@deriving.end]

type row_level_permission_data_set = {
  arn : string prop;
  format_version : string prop;
  namespace : string prop;
  permission_policy : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : row_level_permission_data_set) -> ()

let yojson_of_row_level_permission_data_set =
  (function
   | {
       arn = v_arn;
       format_version = v_format_version;
       namespace = v_namespace;
       permission_policy = v_permission_policy;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_permission_policy
         in
         ("permission_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_format_version
         in
         ("format_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : row_level_permission_data_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_row_level_permission_data_set

[@@@deriving.end]

type row_level_permission_tag_configuration__tag_rules = {
  column_name : string prop;
  match_all_value : string prop;
  tag_key : string prop;
  tag_multi_value_delimiter : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : row_level_permission_tag_configuration__tag_rules) -> ()

let yojson_of_row_level_permission_tag_configuration__tag_rules =
  (function
   | {
       column_name = v_column_name;
       match_all_value = v_match_all_value;
       tag_key = v_tag_key;
       tag_multi_value_delimiter = v_tag_multi_value_delimiter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_tag_multi_value_delimiter
         in
         ("tag_multi_value_delimiter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_key in
         ("tag_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_match_all_value
         in
         ("match_all_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       `Assoc bnds
    : row_level_permission_tag_configuration__tag_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_row_level_permission_tag_configuration__tag_rules

[@@@deriving.end]

type row_level_permission_tag_configuration = {
  status : string prop;
  tag_rules : row_level_permission_tag_configuration__tag_rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : row_level_permission_tag_configuration) -> ()

let yojson_of_row_level_permission_tag_configuration =
  (function
   | { status = v_status; tag_rules = v_tag_rules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_row_level_permission_tag_configuration__tag_rules
             v_tag_rules
         in
         ("tag_rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : row_level_permission_tag_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_row_level_permission_tag_configuration

[@@@deriving.end]

type aws_quicksight_data_set = {
  aws_account_id : string prop option; [@option]
  data_set_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  column_level_permission_rules : column_level_permission_rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_quicksight_data_set) -> ()

let yojson_of_aws_quicksight_data_set =
  (function
   | {
       aws_account_id = v_aws_account_id;
       data_set_id = v_data_set_id;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       column_level_permission_rules =
         v_column_level_permission_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_column_level_permission_rules
             v_column_level_permission_rules
         in
         ("column_level_permission_rules", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_set_id in
         ("data_set_id", arg) :: bnds
       in
       let bnds =
         match v_aws_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_quicksight_data_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_quicksight_data_set

[@@@deriving.end]

let column_level_permission_rules () = ()

let aws_quicksight_data_set ?aws_account_id ?id ?tags ?tags_all
    ?(column_level_permission_rules = []) ~data_set_id () :
    aws_quicksight_data_set =
  {
    aws_account_id;
    data_set_id;
    id;
    tags;
    tags_all;
    column_level_permission_rules;
  }

type t = {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?aws_account_id ?id ?tags ?tags_all
    ?(column_level_permission_rules = []) ~data_set_id __id =
  let __type = "aws_quicksight_data_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       aws_account_id = Prop.computed __type __id "aws_account_id";
       column_groups = Prop.computed __type __id "column_groups";
       data_set_id = Prop.computed __type __id "data_set_id";
       data_set_usage_configuration =
         Prop.computed __type __id "data_set_usage_configuration";
       field_folders = Prop.computed __type __id "field_folders";
       id = Prop.computed __type __id "id";
       import_mode = Prop.computed __type __id "import_mode";
       logical_table_map =
         Prop.computed __type __id "logical_table_map";
       name = Prop.computed __type __id "name";
       permissions = Prop.computed __type __id "permissions";
       physical_table_map =
         Prop.computed __type __id "physical_table_map";
       row_level_permission_data_set =
         Prop.computed __type __id "row_level_permission_data_set";
       row_level_permission_tag_configuration =
         Prop.computed __type __id
           "row_level_permission_tag_configuration";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_quicksight_data_set
        (aws_quicksight_data_set ?aws_account_id ?id ?tags ?tags_all
           ~column_level_permission_rules ~data_set_id ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_account_id ?id ?tags ?tags_all
    ?(column_level_permission_rules = []) ~data_set_id __id =
  let (r : _ Tf_core.resource) =
    make ?aws_account_id ?id ?tags ?tags_all
      ~column_level_permission_rules ~data_set_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
