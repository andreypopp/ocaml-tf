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
  document_version : string prop option; [@option]
  dynamic_parameters : (string * string prop) list option; [@option]
  role_arn : string prop;
  target_account : string prop option; [@option]
  parameter : action__ssm_automation__parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__ssm_automation) -> ()

let yojson_of_action__ssm_automation =
  (function
   | {
       document_name = v_document_name;
       document_version = v_document_version;
       dynamic_parameters = v_dynamic_parameters;
       role_arn = v_role_arn;
       target_account = v_target_account;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__ssm_automation__parameter
             v_parameter
         in
         ("parameter", arg) :: bnds
       in
       let bnds =
         match v_target_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_account", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_dynamic_parameters with
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
             let bnd = "dynamic_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_document_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_version", arg in
             bnd :: bnds
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
  dedupe_string : string prop option; [@option]
  impact : float prop;
  incident_tags : (string * string prop) list option; [@option]
  summary : string prop option; [@option]
  title : string prop;
  notification_target : incident_template__notification_target list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : incident_template) -> ()

let yojson_of_incident_template =
  (function
   | {
       dedupe_string = v_dedupe_string;
       impact = v_impact;
       incident_tags = v_incident_tags;
       summary = v_summary;
       title = v_title;
       notification_target = v_notification_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
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
         match v_incident_tags with
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
             let bnd = "incident_tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_impact in
         ("impact", arg) :: bnds
       in
       let bnds =
         match v_dedupe_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dedupe_string", arg in
             bnd :: bnds
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
  chat_channel : string prop list option; [@option]
  display_name : string prop option; [@option]
  engagements : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  action : action list;
  incident_template : incident_template list;
  integration : integration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssmincidents_response_plan) -> ()

let yojson_of_aws_ssmincidents_response_plan =
  (function
   | {
       chat_channel = v_chat_channel;
       display_name = v_display_name;
       engagements = v_engagements;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       action = v_action;
       incident_template = v_incident_template;
       integration = v_integration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_integration v_integration
         in
         ("integration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_incident_template
             v_incident_template
         in
         ("incident_template", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engagements with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "engagements", arg in
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
       let bnds =
         match v_chat_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "chat_channel", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssmincidents_response_plan ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssmincidents_response_plan

[@@@deriving.end]

let action__ssm_automation__parameter ~name ~values () :
    action__ssm_automation__parameter =
  { name; values }

let action__ssm_automation ?document_version ?dynamic_parameters
    ?target_account ~document_name ~role_arn ~parameter () :
    action__ssm_automation =
  {
    document_name;
    document_version;
    dynamic_parameters;
    role_arn;
    target_account;
    parameter;
  }

let action ?(ssm_automation = []) () : action = { ssm_automation }

let incident_template__notification_target ~sns_topic_arn () :
    incident_template__notification_target =
  { sns_topic_arn }

let incident_template ?dedupe_string ?incident_tags ?summary ~impact
    ~title ~notification_target () : incident_template =
  {
    dedupe_string;
    impact;
    incident_tags;
    summary;
    title;
    notification_target;
  }

let integration__pagerduty ~name ~secret_id ~service_id () :
    integration__pagerduty =
  { name; secret_id; service_id }

let integration ?(pagerduty = []) () : integration = { pagerduty }

let aws_ssmincidents_response_plan ?chat_channel ?display_name
    ?engagements ?id ?tags ?tags_all ?(action = [])
    ?(integration = []) ~name ~incident_template () :
    aws_ssmincidents_response_plan =
  {
    chat_channel;
    display_name;
    engagements;
    id;
    name;
    tags;
    tags_all;
    action;
    incident_template;
    integration;
  }

type t = {
  arn : string prop;
  chat_channel : string list prop;
  display_name : string prop;
  engagements : string list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?chat_channel ?display_name ?engagements ?id ?tags ?tags_all
    ?(action = []) ?(integration = []) ~name ~incident_template __id
    =
  let __type = "aws_ssmincidents_response_plan" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       chat_channel = Prop.computed __type __id "chat_channel";
       display_name = Prop.computed __type __id "display_name";
       engagements = Prop.computed __type __id "engagements";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmincidents_response_plan
        (aws_ssmincidents_response_plan ?chat_channel ?display_name
           ?engagements ?id ?tags ?tags_all ~action ~integration
           ~name ~incident_template ());
    attrs = __attrs;
  }

let register ?tf_module ?chat_channel ?display_name ?engagements ?id
    ?tags ?tags_all ?(action = []) ?(integration = []) ~name
    ~incident_template __id =
  let (r : _ Tf_core.resource) =
    make ?chat_channel ?display_name ?engagements ?id ?tags ?tags_all
      ~action ~integration ~name ~incident_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
