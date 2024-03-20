(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action__ssm_automation__parameter = {
  name : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__ssm_automation__parameter) -> ()

let yojson_of_action__ssm_automation__parameter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : action__ssm_automation__parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__ssm_automation__parameter

[@@@deriving.end]

type action__ssm_automation = {
  document_name : string prop;
  document_version : string prop;
  dynamic_parameters : (string * string prop) list;
  parameter : action__ssm_automation__parameter list;
  role_arn : string prop;
  target_account : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__ssm_automation) -> ()

let yojson_of_action__ssm_automation =
  (function
   | {
       document_name = v_document_name;
       document_version = v_document_version;
       dynamic_parameters = v_dynamic_parameters;
       parameter = v_parameter;
       role_arn = v_role_arn;
       target_account = v_target_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_account
         in
         ("target_account", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__ssm_automation__parameter
             v_parameter
         in
         ("parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_dynamic_parameters
         in
         ("dynamic_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_document_version
         in
         ("document_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_document_name in
         ("document_name", arg) :: bnds
       in
       `Assoc bnds
    : action__ssm_automation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__ssm_automation

[@@@deriving.end]

type action = { ssm_automation : action__ssm_automation list }
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | { ssm_automation = v_ssm_automation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__ssm_automation
             v_ssm_automation
         in
         ("ssm_automation", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type incident_template__notification_target = {
  sns_topic_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : incident_template__notification_target) -> ()

let yojson_of_incident_template__notification_target =
  (function
   | { sns_topic_arn = v_sns_topic_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sns_topic_arn in
         ("sns_topic_arn", arg) :: bnds
       in
       `Assoc bnds
    : incident_template__notification_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_incident_template__notification_target

[@@@deriving.end]

type incident_template = {
  dedupe_string : string prop;
  impact : float prop;
  incident_tags : (string * string prop) list;
  notification_target : incident_template__notification_target list;
  summary : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : incident_template) -> ()

let yojson_of_incident_template =
  (function
   | {
       dedupe_string = v_dedupe_string;
       impact = v_impact;
       incident_tags = v_incident_tags;
       notification_target = v_notification_target;
       summary = v_summary;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_summary in
         ("summary", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_incident_template__notification_target
             v_notification_target
         in
         ("notification_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_incident_tags
         in
         ("incident_tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_impact in
         ("impact", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dedupe_string in
         ("dedupe_string", arg) :: bnds
       in
       `Assoc bnds
    : incident_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_incident_template

[@@@deriving.end]

type integration__pagerduty = {
  name : string prop;
  secret_id : string prop;
  service_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : integration__pagerduty) -> ()

let yojson_of_integration__pagerduty =
  (function
   | {
       name = v_name;
       secret_id = v_secret_id;
       service_id = v_service_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_id in
         ("service_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : integration__pagerduty -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_integration__pagerduty

[@@@deriving.end]

type integration = { pagerduty : integration__pagerduty list }
[@@deriving_inline yojson_of]

let _ = fun (_ : integration) -> ()

let yojson_of_integration =
  (function
   | { pagerduty = v_pagerduty } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_integration__pagerduty
             v_pagerduty
         in
         ("pagerduty", arg) :: bnds
       in
       `Assoc bnds
    : integration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_integration

[@@@deriving.end]

type aws_ssmincidents_response_plan = {
  arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssmincidents_response_plan) -> ()

let yojson_of_aws_ssmincidents_response_plan =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssmincidents_response_plan ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssmincidents_response_plan

[@@@deriving.end]

let aws_ssmincidents_response_plan ?id ?tags ~arn () :
    aws_ssmincidents_response_plan =
  { arn; id; tags }

type t = {
  action : action list prop;
  arn : string prop;
  chat_channel : string list prop;
  display_name : string prop;
  engagements : string list prop;
  id : string prop;
  incident_template : incident_template list prop;
  integration : integration list prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_ssmincidents_response_plan" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       arn = Prop.computed __type __id "arn";
       chat_channel = Prop.computed __type __id "chat_channel";
       display_name = Prop.computed __type __id "display_name";
       engagements = Prop.computed __type __id "engagements";
       id = Prop.computed __type __id "id";
       incident_template =
         Prop.computed __type __id "incident_template";
       integration = Prop.computed __type __id "integration";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmincidents_response_plan
        (aws_ssmincidents_response_plan ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
