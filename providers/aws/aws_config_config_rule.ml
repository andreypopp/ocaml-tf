(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type evaluation_mode = { mode : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : evaluation_mode) -> ()

let yojson_of_evaluation_mode =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : evaluation_mode -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_evaluation_mode

[@@@deriving.end]

type scope = {
  compliance_resource_id : string prop option; [@option]
  compliance_resource_types : string prop list option; [@option]
  tag_key : string prop option; [@option]
  tag_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scope) -> ()

let yojson_of_scope =
  (function
   | {
       compliance_resource_id = v_compliance_resource_id;
       compliance_resource_types = v_compliance_resource_types;
       tag_key = v_tag_key;
       tag_value = v_tag_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compliance_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "compliance_resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compliance_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compliance_resource_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope

[@@@deriving.end]

type source__custom_policy_details = {
  enable_debug_log_delivery : bool prop option; [@option]
  policy_runtime : string prop;
  policy_text : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__custom_policy_details) -> ()

let yojson_of_source__custom_policy_details =
  (function
   | {
       enable_debug_log_delivery = v_enable_debug_log_delivery;
       policy_runtime = v_policy_runtime;
       policy_text = v_policy_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_text in
         ("policy_text", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_runtime
         in
         ("policy_runtime", arg) :: bnds
       in
       let bnds =
         match v_enable_debug_log_delivery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_debug_log_delivery", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source__custom_policy_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__custom_policy_details

[@@@deriving.end]

type source__source_detail = {
  event_source : string prop option; [@option]
  maximum_execution_frequency : string prop option; [@option]
  message_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__source_detail) -> ()

let yojson_of_source__source_detail =
  (function
   | {
       event_source = v_event_source;
       maximum_execution_frequency = v_maximum_execution_frequency;
       message_type = v_message_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_message_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_execution_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_execution_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_source", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source__source_detail -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__source_detail

[@@@deriving.end]

type source = {
  owner : string prop;
  source_identifier : string prop option; [@option]
  custom_policy_details : source__custom_policy_details list;
  source_detail : source__source_detail list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       owner = v_owner;
       source_identifier = v_source_identifier;
       custom_policy_details = v_custom_policy_details;
       source_detail = v_source_detail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source__source_detail
             v_source_detail
         in
         ("source_detail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source__custom_policy_details
             v_custom_policy_details
         in
         ("custom_policy_details", arg) :: bnds
       in
       let bnds =
         match v_source_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type aws_config_config_rule = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  input_parameters : string prop option; [@option]
  maximum_execution_frequency : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  evaluation_mode : evaluation_mode list;
  scope : scope list;
  source : source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_config_rule) -> ()

let yojson_of_aws_config_config_rule =
  (function
   | {
       description = v_description;
       id = v_id;
       input_parameters = v_input_parameters;
       maximum_execution_frequency = v_maximum_execution_frequency;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       evaluation_mode = v_evaluation_mode;
       scope = v_scope;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_source v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_scope v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_evaluation_mode v_evaluation_mode
         in
         ("evaluation_mode", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_maximum_execution_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_execution_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_parameters", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_config_config_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_config_rule

[@@@deriving.end]

let evaluation_mode ?mode () : evaluation_mode = { mode }

let scope ?compliance_resource_id ?compliance_resource_types ?tag_key
    ?tag_value () : scope =
  {
    compliance_resource_id;
    compliance_resource_types;
    tag_key;
    tag_value;
  }

let source__custom_policy_details ?enable_debug_log_delivery
    ~policy_runtime ~policy_text () : source__custom_policy_details =
  { enable_debug_log_delivery; policy_runtime; policy_text }

let source__source_detail ?event_source ?maximum_execution_frequency
    ?message_type () : source__source_detail =
  { event_source; maximum_execution_frequency; message_type }

let source ?source_identifier ~owner ~custom_policy_details
    ~source_detail () : source =
  { owner; source_identifier; custom_policy_details; source_detail }

let aws_config_config_rule ?description ?id ?input_parameters
    ?maximum_execution_frequency ?tags ?tags_all ~name
    ~evaluation_mode ~scope ~source () : aws_config_config_rule =
  {
    description;
    id;
    input_parameters;
    maximum_execution_frequency;
    name;
    tags;
    tags_all;
    evaluation_mode;
    scope;
    source;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  input_parameters : string prop;
  maximum_execution_frequency : string prop;
  name : string prop;
  rule_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?input_parameters
    ?maximum_execution_frequency ?tags ?tags_all ~name
    ~evaluation_mode ~scope ~source __id =
  let __type = "aws_config_config_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       input_parameters =
         Prop.computed __type __id "input_parameters";
       maximum_execution_frequency =
         Prop.computed __type __id "maximum_execution_frequency";
       name = Prop.computed __type __id "name";
       rule_id = Prop.computed __type __id "rule_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_config_rule
        (aws_config_config_rule ?description ?id ?input_parameters
           ?maximum_execution_frequency ?tags ?tags_all ~name
           ~evaluation_mode ~scope ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?input_parameters
    ?maximum_execution_frequency ?tags ?tags_all ~name
    ~evaluation_mode ~scope ~source __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?input_parameters
      ?maximum_execution_frequency ?tags ?tags_all ~name
      ~evaluation_mode ~scope ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
