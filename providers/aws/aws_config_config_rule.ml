(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type evaluation_mode = {
  mode : string prop option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** evaluation_mode *)

type scope = {
  compliance_resource_id : string prop option; [@option]
      (** compliance_resource_id *)
  compliance_resource_types : string prop list option; [@option]
      (** compliance_resource_types *)
  tag_key : string prop option; [@option]  (** tag_key *)
  tag_value : string prop option; [@option]  (** tag_value *)
}
[@@deriving yojson_of]
(** scope *)

type source__custom_policy_details = {
  enable_debug_log_delivery : bool prop option; [@option]
      (** enable_debug_log_delivery *)
  policy_runtime : string prop;  (** policy_runtime *)
  policy_text : string prop;  (** policy_text *)
}
[@@deriving yojson_of]
(** source__custom_policy_details *)

type source__source_detail = {
  event_source : string prop option; [@option]  (** event_source *)
  maximum_execution_frequency : string prop option; [@option]
      (** maximum_execution_frequency *)
  message_type : string prop option; [@option]  (** message_type *)
}
[@@deriving yojson_of]
(** source__source_detail *)

type source = {
  owner : string prop;  (** owner *)
  source_identifier : string prop option; [@option]
      (** source_identifier *)
  custom_policy_details : source__custom_policy_details list;
  source_detail : source__source_detail list;
}
[@@deriving yojson_of]
(** source *)

type aws_config_config_rule = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  input_parameters : string prop option; [@option]
      (** input_parameters *)
  maximum_execution_frequency : string prop option; [@option]
      (** maximum_execution_frequency *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  evaluation_mode : evaluation_mode list;
  scope : scope list;
  source : source list;
}
[@@deriving yojson_of]
(** aws_config_config_rule *)

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
