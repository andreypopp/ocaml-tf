(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type property_definitions__date_time_type_options = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__date_time_type_options) -> ()

let yojson_of_property_definitions__date_time_type_options =
  (yojson_of_unit
    : property_definitions__date_time_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__date_time_type_options

[@@@deriving.end]

type property_definitions__enum_type_options = {
  possible_values : string prop list;
  validation_check_disabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__enum_type_options) -> ()

let yojson_of_property_definitions__enum_type_options =
  (function
   | {
       possible_values = v_possible_values;
       validation_check_disabled = v_validation_check_disabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_validation_check_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validation_check_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_possible_values
         in
         ("possible_values", arg) :: bnds
       in
       `Assoc bnds
    : property_definitions__enum_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__enum_type_options

[@@@deriving.end]

type property_definitions__float_type_options = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__float_type_options) -> ()

let yojson_of_property_definitions__float_type_options =
  (yojson_of_unit
    : property_definitions__float_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__float_type_options

[@@@deriving.end]

type property_definitions__integer_type_options = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__integer_type_options) -> ()

let yojson_of_property_definitions__integer_type_options =
  (yojson_of_unit
    : property_definitions__integer_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__integer_type_options

[@@@deriving.end]

type property_definitions__map_type_options = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__map_type_options) -> ()

let yojson_of_property_definitions__map_type_options =
  (yojson_of_unit
    : property_definitions__map_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__map_type_options

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions__date_time_type_options =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions__date_time_type_options) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions__date_time_type_options
    =
  (yojson_of_unit
    : property_definitions__property_type_options__property_definitions__date_time_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions__date_time_type_options

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions__enum_type_options = {
  possible_values : string prop list;
  validation_check_disabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions__enum_type_options) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions__enum_type_options
    =
  (function
   | {
       possible_values = v_possible_values;
       validation_check_disabled = v_validation_check_disabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_validation_check_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validation_check_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_possible_values
         in
         ("possible_values", arg) :: bnds
       in
       `Assoc bnds
    : property_definitions__property_type_options__property_definitions__enum_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions__enum_type_options

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions__float_type_options =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions__float_type_options) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions__float_type_options
    =
  (yojson_of_unit
    : property_definitions__property_type_options__property_definitions__float_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions__float_type_options

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions__integer_type_options =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions__integer_type_options) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions__integer_type_options
    =
  (yojson_of_unit
    : property_definitions__property_type_options__property_definitions__integer_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions__integer_type_options

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions__map_type_options =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions__map_type_options) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions__map_type_options
    =
  (yojson_of_unit
    : property_definitions__property_type_options__property_definitions__map_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions__map_type_options

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions__schema_sources = {
  name : string prop option; [@option]
  processor_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions__schema_sources) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions__schema_sources
    =
  (function
   | { name = v_name; processor_type = v_processor_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_processor_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "processor_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : property_definitions__property_type_options__property_definitions__schema_sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions__schema_sources

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions__text_type_options =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions__text_type_options) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions__text_type_options
    =
  (yojson_of_unit
    : property_definitions__property_type_options__property_definitions__text_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions__text_type_options

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions__timestamp_type_options =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions__timestamp_type_options) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions__timestamp_type_options
    =
  (yojson_of_unit
    : property_definitions__property_type_options__property_definitions__timestamp_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions__timestamp_type_options

[@@@deriving.end]

type property_definitions__property_type_options__property_definitions = {
  display_name : string prop option; [@option]
  is_filterable : bool prop option; [@option]
  is_metadata : bool prop option; [@option]
  is_repeatable : bool prop option; [@option]
  is_required : bool prop option; [@option]
  is_searchable : bool prop option; [@option]
  name : string prop;
  retrieval_importance : string prop option; [@option]
  date_time_type_options :
    property_definitions__property_type_options__property_definitions__date_time_type_options
    list;
  enum_type_options :
    property_definitions__property_type_options__property_definitions__enum_type_options
    list;
  float_type_options :
    property_definitions__property_type_options__property_definitions__float_type_options
    list;
  integer_type_options :
    property_definitions__property_type_options__property_definitions__integer_type_options
    list;
  map_type_options :
    property_definitions__property_type_options__property_definitions__map_type_options
    list;
  schema_sources :
    property_definitions__property_type_options__property_definitions__schema_sources
    list;
  text_type_options :
    property_definitions__property_type_options__property_definitions__text_type_options
    list;
  timestamp_type_options :
    property_definitions__property_type_options__property_definitions__timestamp_type_options
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       property_definitions__property_type_options__property_definitions) ->
  ()

let yojson_of_property_definitions__property_type_options__property_definitions
    =
  (function
   | {
       display_name = v_display_name;
       is_filterable = v_is_filterable;
       is_metadata = v_is_metadata;
       is_repeatable = v_is_repeatable;
       is_required = v_is_required;
       is_searchable = v_is_searchable;
       name = v_name;
       retrieval_importance = v_retrieval_importance;
       date_time_type_options = v_date_time_type_options;
       enum_type_options = v_enum_type_options;
       float_type_options = v_float_type_options;
       integer_type_options = v_integer_type_options;
       map_type_options = v_map_type_options;
       schema_sources = v_schema_sources;
       text_type_options = v_text_type_options;
       timestamp_type_options = v_timestamp_type_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions__timestamp_type_options
             v_timestamp_type_options
         in
         ("timestamp_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions__text_type_options
             v_text_type_options
         in
         ("text_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions__schema_sources
             v_schema_sources
         in
         ("schema_sources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions__map_type_options
             v_map_type_options
         in
         ("map_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions__integer_type_options
             v_integer_type_options
         in
         ("integer_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions__float_type_options
             v_float_type_options
         in
         ("float_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions__enum_type_options
             v_enum_type_options
         in
         ("enum_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions__date_time_type_options
             v_date_time_type_options
         in
         ("date_time_type_options", arg) :: bnds
       in
       let bnds =
         match v_retrieval_importance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retrieval_importance", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_searchable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_searchable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_repeatable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_repeatable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_filterable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_filterable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : property_definitions__property_type_options__property_definitions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_property_definitions__property_type_options__property_definitions

[@@@deriving.end]

type property_definitions__property_type_options = {
  property_definitions :
    property_definitions__property_type_options__property_definitions
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__property_type_options) -> ()

let yojson_of_property_definitions__property_type_options =
  (function
   | { property_definitions = v_property_definitions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options__property_definitions
             v_property_definitions
         in
         ("property_definitions", arg) :: bnds
       in
       `Assoc bnds
    : property_definitions__property_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__property_type_options

[@@@deriving.end]

type property_definitions__schema_sources = {
  name : string prop option; [@option]
  processor_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__schema_sources) -> ()

let yojson_of_property_definitions__schema_sources =
  (function
   | { name = v_name; processor_type = v_processor_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_processor_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "processor_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : property_definitions__schema_sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__schema_sources

[@@@deriving.end]

type property_definitions__text_type_options = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__text_type_options) -> ()

let yojson_of_property_definitions__text_type_options =
  (yojson_of_unit
    : property_definitions__text_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__text_type_options

[@@@deriving.end]

type property_definitions__timestamp_type_options = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions__timestamp_type_options) -> ()

let yojson_of_property_definitions__timestamp_type_options =
  (yojson_of_unit
    : property_definitions__timestamp_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions__timestamp_type_options

[@@@deriving.end]

type property_definitions = {
  display_name : string prop option; [@option]
  is_filterable : bool prop option; [@option]
  is_metadata : bool prop option; [@option]
  is_repeatable : bool prop option; [@option]
  is_required : bool prop option; [@option]
  is_searchable : bool prop option; [@option]
  name : string prop;
  retrieval_importance : string prop option; [@option]
  date_time_type_options :
    property_definitions__date_time_type_options list;
  enum_type_options : property_definitions__enum_type_options list;
  float_type_options : property_definitions__float_type_options list;
  integer_type_options :
    property_definitions__integer_type_options list;
  map_type_options : property_definitions__map_type_options list;
  property_type_options :
    property_definitions__property_type_options list;
  schema_sources : property_definitions__schema_sources list;
  text_type_options : property_definitions__text_type_options list;
  timestamp_type_options :
    property_definitions__timestamp_type_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : property_definitions) -> ()

let yojson_of_property_definitions =
  (function
   | {
       display_name = v_display_name;
       is_filterable = v_is_filterable;
       is_metadata = v_is_metadata;
       is_repeatable = v_is_repeatable;
       is_required = v_is_required;
       is_searchable = v_is_searchable;
       name = v_name;
       retrieval_importance = v_retrieval_importance;
       date_time_type_options = v_date_time_type_options;
       enum_type_options = v_enum_type_options;
       float_type_options = v_float_type_options;
       integer_type_options = v_integer_type_options;
       map_type_options = v_map_type_options;
       property_type_options = v_property_type_options;
       schema_sources = v_schema_sources;
       text_type_options = v_text_type_options;
       timestamp_type_options = v_timestamp_type_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__timestamp_type_options
             v_timestamp_type_options
         in
         ("timestamp_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__text_type_options
             v_text_type_options
         in
         ("text_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__schema_sources
             v_schema_sources
         in
         ("schema_sources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__property_type_options
             v_property_type_options
         in
         ("property_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__map_type_options
             v_map_type_options
         in
         ("map_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__integer_type_options
             v_integer_type_options
         in
         ("integer_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__float_type_options
             v_float_type_options
         in
         ("float_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__enum_type_options
             v_enum_type_options
         in
         ("enum_type_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_property_definitions__date_time_type_options
             v_date_time_type_options
         in
         ("date_time_type_options", arg) :: bnds
       in
       let bnds =
         match v_retrieval_importance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retrieval_importance", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_searchable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_searchable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_repeatable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_repeatable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_filterable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_filterable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : property_definitions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_property_definitions

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_document_ai_warehouse_document_schema = {
  display_name : string prop;
  document_is_folder : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  project_number : string prop;
  property_definitions : property_definitions list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_document_ai_warehouse_document_schema) -> ()

let yojson_of_google_document_ai_warehouse_document_schema =
  (function
   | {
       display_name = v_display_name;
       document_is_folder = v_document_is_folder;
       id = v_id;
       location = v_location;
       project_number = v_project_number;
       property_definitions = v_property_definitions;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_property_definitions
             v_property_definitions
         in
         ("property_definitions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_project_number
         in
         ("project_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_document_is_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "document_is_folder", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : google_document_ai_warehouse_document_schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_document_ai_warehouse_document_schema

[@@@deriving.end]

let property_definitions__date_time_type_options () = ()

let property_definitions__enum_type_options
    ?validation_check_disabled ~possible_values () :
    property_definitions__enum_type_options =
  { possible_values; validation_check_disabled }

let property_definitions__float_type_options () = ()
let property_definitions__integer_type_options () = ()
let property_definitions__map_type_options () = ()

let property_definitions__property_type_options__property_definitions__date_time_type_options
    () =
  ()

let property_definitions__property_type_options__property_definitions__enum_type_options
    ?validation_check_disabled ~possible_values () :
    property_definitions__property_type_options__property_definitions__enum_type_options
    =
  { possible_values; validation_check_disabled }

let property_definitions__property_type_options__property_definitions__float_type_options
    () =
  ()

let property_definitions__property_type_options__property_definitions__integer_type_options
    () =
  ()

let property_definitions__property_type_options__property_definitions__map_type_options
    () =
  ()

let property_definitions__property_type_options__property_definitions__schema_sources
    ?name ?processor_type () :
    property_definitions__property_type_options__property_definitions__schema_sources
    =
  { name; processor_type }

let property_definitions__property_type_options__property_definitions__text_type_options
    () =
  ()

let property_definitions__property_type_options__property_definitions__timestamp_type_options
    () =
  ()

let property_definitions__property_type_options__property_definitions
    ?display_name ?is_filterable ?is_metadata ?is_repeatable
    ?is_required ?is_searchable ?retrieval_importance
    ?(date_time_type_options = []) ?(enum_type_options = [])
    ?(float_type_options = []) ?(integer_type_options = [])
    ?(map_type_options = []) ?(schema_sources = [])
    ?(text_type_options = []) ?(timestamp_type_options = []) ~name ()
    :
    property_definitions__property_type_options__property_definitions
    =
  {
    display_name;
    is_filterable;
    is_metadata;
    is_repeatable;
    is_required;
    is_searchable;
    name;
    retrieval_importance;
    date_time_type_options;
    enum_type_options;
    float_type_options;
    integer_type_options;
    map_type_options;
    schema_sources;
    text_type_options;
    timestamp_type_options;
  }

let property_definitions__property_type_options ~property_definitions
    () : property_definitions__property_type_options =
  { property_definitions }

let property_definitions__schema_sources ?name ?processor_type () :
    property_definitions__schema_sources =
  { name; processor_type }

let property_definitions__text_type_options () = ()
let property_definitions__timestamp_type_options () = ()

let property_definitions ?display_name ?is_filterable ?is_metadata
    ?is_repeatable ?is_required ?is_searchable ?retrieval_importance
    ?(date_time_type_options = []) ?(enum_type_options = [])
    ?(float_type_options = []) ?(integer_type_options = [])
    ?(map_type_options = []) ?(property_type_options = [])
    ?(schema_sources = []) ?(text_type_options = [])
    ?(timestamp_type_options = []) ~name () : property_definitions =
  {
    display_name;
    is_filterable;
    is_metadata;
    is_repeatable;
    is_required;
    is_searchable;
    name;
    retrieval_importance;
    date_time_type_options;
    enum_type_options;
    float_type_options;
    integer_type_options;
    map_type_options;
    property_type_options;
    schema_sources;
    text_type_options;
    timestamp_type_options;
  }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_document_ai_warehouse_document_schema ?document_is_folder
    ?id ?timeouts ~display_name ~location ~project_number
    ~property_definitions () :
    google_document_ai_warehouse_document_schema =
  {
    display_name;
    document_is_folder;
    id;
    location;
    project_number;
    property_definitions;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  document_is_folder : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project_number : string prop;
}

let make ?document_is_folder ?id ?timeouts ~display_name ~location
    ~project_number ~property_definitions __id =
  let __type = "google_document_ai_warehouse_document_schema" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       document_is_folder =
         Prop.computed __type __id "document_is_folder";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project_number = Prop.computed __type __id "project_number";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_document_ai_warehouse_document_schema
        (google_document_ai_warehouse_document_schema
           ?document_is_folder ?id ?timeouts ~display_name ~location
           ~project_number ~property_definitions ());
    attrs = __attrs;
  }

let register ?tf_module ?document_is_folder ?id ?timeouts
    ~display_name ~location ~project_number ~property_definitions
    __id =
  let (r : _ Tf_core.resource) =
    make ?document_is_folder ?id ?timeouts ~display_name ~location
      ~project_number ~property_definitions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
