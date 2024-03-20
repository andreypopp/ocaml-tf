(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type request__header__example = {
  description : string prop option; [@option]
  external_value : string prop option; [@option]
  name : string prop;
  summary : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request__header__example) -> ()

let yojson_of_request__header__example =
  (function
   | {
       description = v_description;
       external_value = v_external_value;
       name = v_name;
       summary = v_summary;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_summary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "summary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_external_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request__header__example -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__header__example

[@@@deriving.end]

type request__header = {
  default_value : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  required : bool prop;
  schema_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_name : string prop option; [@option]
  values : string prop list option; [@option]
  example : request__header__example list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request__header) -> ()

let yojson_of_request__header =
  (function
   | {
       default_value = v_default_value;
       description = v_description;
       name = v_name;
       required = v_required;
       schema_id = v_schema_id;
       type_ = v_type_;
       type_name = v_type_name;
       values = v_values;
       example = v_example;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_request__header__example
             v_example
         in
         ("example", arg) :: bnds
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request__header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__header

[@@@deriving.end]

type request__query_parameter__example = {
  description : string prop option; [@option]
  external_value : string prop option; [@option]
  name : string prop;
  summary : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request__query_parameter__example) -> ()

let yojson_of_request__query_parameter__example =
  (function
   | {
       description = v_description;
       external_value = v_external_value;
       name = v_name;
       summary = v_summary;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_summary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "summary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_external_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request__query_parameter__example ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__query_parameter__example

[@@@deriving.end]

type request__query_parameter = {
  default_value : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  required : bool prop;
  schema_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_name : string prop option; [@option]
  values : string prop list option; [@option]
  example : request__query_parameter__example list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request__query_parameter) -> ()

let yojson_of_request__query_parameter =
  (function
   | {
       default_value = v_default_value;
       description = v_description;
       name = v_name;
       required = v_required;
       schema_id = v_schema_id;
       type_ = v_type_;
       type_name = v_type_name;
       values = v_values;
       example = v_example;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_request__query_parameter__example
             v_example
         in
         ("example", arg) :: bnds
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request__query_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__query_parameter

[@@@deriving.end]

type request__representation__example = {
  description : string prop option; [@option]
  external_value : string prop option; [@option]
  name : string prop;
  summary : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request__representation__example) -> ()

let yojson_of_request__representation__example =
  (function
   | {
       description = v_description;
       external_value = v_external_value;
       name = v_name;
       summary = v_summary;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_summary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "summary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_external_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request__representation__example ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__representation__example

[@@@deriving.end]

type request__representation__form_parameter__example = {
  description : string prop option; [@option]
  external_value : string prop option; [@option]
  name : string prop;
  summary : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : request__representation__form_parameter__example) -> ()

let yojson_of_request__representation__form_parameter__example =
  (function
   | {
       description = v_description;
       external_value = v_external_value;
       name = v_name;
       summary = v_summary;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_summary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "summary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_external_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request__representation__form_parameter__example ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__representation__form_parameter__example

[@@@deriving.end]

type request__representation__form_parameter = {
  default_value : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  required : bool prop;
  schema_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_name : string prop option; [@option]
  values : string prop list option; [@option]
  example : request__representation__form_parameter__example list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request__representation__form_parameter) -> ()

let yojson_of_request__representation__form_parameter =
  (function
   | {
       default_value = v_default_value;
       description = v_description;
       name = v_name;
       required = v_required;
       schema_id = v_schema_id;
       type_ = v_type_;
       type_name = v_type_name;
       values = v_values;
       example = v_example;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_request__representation__form_parameter__example
             v_example
         in
         ("example", arg) :: bnds
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request__representation__form_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__representation__form_parameter

[@@@deriving.end]

type request__representation = {
  content_type : string prop;
  schema_id : string prop option; [@option]
  type_name : string prop option; [@option]
  example : request__representation__example list;
  form_parameter : request__representation__form_parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request__representation) -> ()

let yojson_of_request__representation =
  (function
   | {
       content_type = v_content_type;
       schema_id = v_schema_id;
       type_name = v_type_name;
       example = v_example;
       form_parameter = v_form_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_request__representation__form_parameter
             v_form_parameter
         in
         ("form_parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_request__representation__example
             v_example
         in
         ("example", arg) :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       `Assoc bnds
    : request__representation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__representation

[@@@deriving.end]

type request = {
  description : string prop option; [@option]
  header : request__header list;
  query_parameter : request__query_parameter list;
  representation : request__representation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request) -> ()

let yojson_of_request =
  (function
   | {
       description = v_description;
       header = v_header;
       query_parameter = v_query_parameter;
       representation = v_representation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_request__representation
             v_representation
         in
         ("representation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_request__query_parameter
             v_query_parameter
         in
         ("query_parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_request__header v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request

[@@@deriving.end]

type response__header__example = {
  description : string prop option; [@option]
  external_value : string prop option; [@option]
  name : string prop;
  summary : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : response__header__example) -> ()

let yojson_of_response__header__example =
  (function
   | {
       description = v_description;
       external_value = v_external_value;
       name = v_name;
       summary = v_summary;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_summary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "summary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_external_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : response__header__example -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_response__header__example

[@@@deriving.end]

type response__header = {
  default_value : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  required : bool prop;
  schema_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_name : string prop option; [@option]
  values : string prop list option; [@option]
  example : response__header__example list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : response__header) -> ()

let yojson_of_response__header =
  (function
   | {
       default_value = v_default_value;
       description = v_description;
       name = v_name;
       required = v_required;
       schema_id = v_schema_id;
       type_ = v_type_;
       type_name = v_type_name;
       values = v_values;
       example = v_example;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_response__header__example
             v_example
         in
         ("example", arg) :: bnds
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : response__header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_response__header

[@@@deriving.end]

type response__representation__example = {
  description : string prop option; [@option]
  external_value : string prop option; [@option]
  name : string prop;
  summary : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : response__representation__example) -> ()

let yojson_of_response__representation__example =
  (function
   | {
       description = v_description;
       external_value = v_external_value;
       name = v_name;
       summary = v_summary;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_summary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "summary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_external_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : response__representation__example ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_response__representation__example

[@@@deriving.end]

type response__representation__form_parameter__example = {
  description : string prop option; [@option]
  external_value : string prop option; [@option]
  name : string prop;
  summary : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : response__representation__form_parameter__example) -> ()

let yojson_of_response__representation__form_parameter__example =
  (function
   | {
       description = v_description;
       external_value = v_external_value;
       name = v_name;
       summary = v_summary;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_summary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "summary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_external_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : response__representation__form_parameter__example ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_response__representation__form_parameter__example

[@@@deriving.end]

type response__representation__form_parameter = {
  default_value : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  required : bool prop;
  schema_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_name : string prop option; [@option]
  values : string prop list option; [@option]
  example : response__representation__form_parameter__example list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : response__representation__form_parameter) -> ()

let yojson_of_response__representation__form_parameter =
  (function
   | {
       default_value = v_default_value;
       description = v_description;
       name = v_name;
       required = v_required;
       schema_id = v_schema_id;
       type_ = v_type_;
       type_name = v_type_name;
       values = v_values;
       example = v_example;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_response__representation__form_parameter__example
             v_example
         in
         ("example", arg) :: bnds
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : response__representation__form_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_response__representation__form_parameter

[@@@deriving.end]

type response__representation = {
  content_type : string prop;
  schema_id : string prop option; [@option]
  type_name : string prop option; [@option]
  example : response__representation__example list;
  form_parameter : response__representation__form_parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : response__representation) -> ()

let yojson_of_response__representation =
  (function
   | {
       content_type = v_content_type;
       schema_id = v_schema_id;
       type_name = v_type_name;
       example = v_example;
       form_parameter = v_form_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_response__representation__form_parameter
             v_form_parameter
         in
         ("form_parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_response__representation__example
             v_example
         in
         ("example", arg) :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       `Assoc bnds
    : response__representation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_response__representation

[@@@deriving.end]

type response = {
  description : string prop option; [@option]
  status_code : float prop;
  header : response__header list;
  representation : response__representation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : response) -> ()

let yojson_of_response =
  (function
   | {
       description = v_description;
       status_code = v_status_code;
       header = v_header;
       representation = v_representation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_response__representation
             v_representation
         in
         ("representation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_response__header v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_response

[@@@deriving.end]

type template_parameter__example = {
  description : string prop option; [@option]
  external_value : string prop option; [@option]
  name : string prop;
  summary : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template_parameter__example) -> ()

let yojson_of_template_parameter__example =
  (function
   | {
       description = v_description;
       external_value = v_external_value;
       name = v_name;
       summary = v_summary;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_summary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "summary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_external_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template_parameter__example ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template_parameter__example

[@@@deriving.end]

type template_parameter = {
  default_value : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  required : bool prop;
  schema_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_name : string prop option; [@option]
  values : string prop list option; [@option]
  example : template_parameter__example list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template_parameter) -> ()

let yojson_of_template_parameter =
  (function
   | {
       default_value = v_default_value;
       description = v_description;
       name = v_name;
       required = v_required;
       schema_id = v_schema_id;
       type_ = v_type_;
       type_name = v_type_name;
       values = v_values;
       example = v_example;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template_parameter__example
             v_example
         in
         ("example", arg) :: bnds
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template_parameter

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
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

type azurerm_api_management_api_operation = {
  api_management_name : string prop;
  api_name : string prop;
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  method_ : string prop; [@key "method"]
  operation_id : string prop;
  resource_group_name : string prop;
  url_template : string prop;
  request : request list;
  response : response list;
  template_parameter : template_parameter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_api_operation) -> ()

let yojson_of_azurerm_api_management_api_operation =
  (function
   | {
       api_management_name = v_api_management_name;
       api_name = v_api_name;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       method_ = v_method_;
       operation_id = v_operation_id;
       resource_group_name = v_resource_group_name;
       url_template = v_url_template;
       request = v_request;
       response = v_response;
       template_parameter = v_template_parameter;
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
           yojson_of_list yojson_of_template_parameter
             v_template_parameter
         in
         ("template_parameter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_response v_response in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_request v_request in
         ("request", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url_template in
         ("url_template", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operation_id in
         ("operation_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_method_ in
         ("method", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_name in
         ("api_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_api_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_api_operation

[@@@deriving.end]

let request__header__example ?description ?external_value ?summary
    ?value ~name () : request__header__example =
  { description; external_value; name; summary; value }

let request__header ?default_value ?description ?schema_id ?type_name
    ?values ~name ~required ~type_ ~example () : request__header =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let request__query_parameter__example ?description ?external_value
    ?summary ?value ~name () : request__query_parameter__example =
  { description; external_value; name; summary; value }

let request__query_parameter ?default_value ?description ?schema_id
    ?type_name ?values ~name ~required ~type_ ~example () :
    request__query_parameter =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let request__representation__example ?description ?external_value
    ?summary ?value ~name () : request__representation__example =
  { description; external_value; name; summary; value }

let request__representation__form_parameter__example ?description
    ?external_value ?summary ?value ~name () :
    request__representation__form_parameter__example =
  { description; external_value; name; summary; value }

let request__representation__form_parameter ?default_value
    ?description ?schema_id ?type_name ?values ~name ~required ~type_
    ~example () : request__representation__form_parameter =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let request__representation ?schema_id ?type_name ~content_type
    ~example ~form_parameter () : request__representation =
  { content_type; schema_id; type_name; example; form_parameter }

let request ?description ~header ~query_parameter ~representation ()
    : request =
  { description; header; query_parameter; representation }

let response__header__example ?description ?external_value ?summary
    ?value ~name () : response__header__example =
  { description; external_value; name; summary; value }

let response__header ?default_value ?description ?schema_id
    ?type_name ?values ~name ~required ~type_ ~example () :
    response__header =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let response__representation__example ?description ?external_value
    ?summary ?value ~name () : response__representation__example =
  { description; external_value; name; summary; value }

let response__representation__form_parameter__example ?description
    ?external_value ?summary ?value ~name () :
    response__representation__form_parameter__example =
  { description; external_value; name; summary; value }

let response__representation__form_parameter ?default_value
    ?description ?schema_id ?type_name ?values ~name ~required ~type_
    ~example () : response__representation__form_parameter =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let response__representation ?schema_id ?type_name ~content_type
    ~example ~form_parameter () : response__representation =
  { content_type; schema_id; type_name; example; form_parameter }

let response ?description ~status_code ~header ~representation () :
    response =
  { description; status_code; header; representation }

let template_parameter__example ?description ?external_value ?summary
    ?value ~name () : template_parameter__example =
  { description; external_value; name; summary; value }

let template_parameter ?default_value ?description ?schema_id
    ?type_name ?values ~name ~required ~type_ ~example () :
    template_parameter =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_operation ?description ?id ?timeouts
    ~api_management_name ~api_name ~display_name ~method_
    ~operation_id ~resource_group_name ~url_template ~request
    ~response ~template_parameter () :
    azurerm_api_management_api_operation =
  {
    api_management_name;
    api_name;
    description;
    display_name;
    id;
    method_;
    operation_id;
    resource_group_name;
    url_template;
    request;
    response;
    template_parameter;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  api_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  method_ : string prop;
  operation_id : string prop;
  resource_group_name : string prop;
  url_template : string prop;
}

let make ?description ?id ?timeouts ~api_management_name ~api_name
    ~display_name ~method_ ~operation_id ~resource_group_name
    ~url_template ~request ~response ~template_parameter __id =
  let __type = "azurerm_api_management_api_operation" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       api_name = Prop.computed __type __id "api_name";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       method_ = Prop.computed __type __id "method";
       operation_id = Prop.computed __type __id "operation_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       url_template = Prop.computed __type __id "url_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_operation
        (azurerm_api_management_api_operation ?description ?id
           ?timeouts ~api_management_name ~api_name ~display_name
           ~method_ ~operation_id ~resource_group_name ~url_template
           ~request ~response ~template_parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~api_management_name ~api_name ~display_name ~method_
    ~operation_id ~resource_group_name ~url_template ~request
    ~response ~template_parameter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~api_management_name ~api_name
      ~display_name ~method_ ~operation_id ~resource_group_name
      ~url_template ~request ~response ~template_parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
