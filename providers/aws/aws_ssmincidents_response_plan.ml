(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type action__ssm_automation__parameter = {
  name : string prop;  (** name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** action__ssm_automation__parameter *)

type action__ssm_automation = {
  document_name : string prop;  (** document_name *)
  document_version : string prop option; [@option]
      (** document_version *)
  dynamic_parameters : (string * string prop) list option; [@option]
      (** dynamic_parameters *)
  role_arn : string prop;  (** role_arn *)
  target_account : string prop option; [@option]
      (** target_account *)
  parameter : action__ssm_automation__parameter list;
}
[@@deriving yojson_of]
(** action__ssm_automation *)

type action = { ssm_automation : action__ssm_automation list }
[@@deriving yojson_of]
(** action *)

type incident_template__notification_target = {
  sns_topic_arn : string prop;  (** sns_topic_arn *)
}
[@@deriving yojson_of]
(** incident_template__notification_target *)

type incident_template = {
  dedupe_string : string prop option; [@option]  (** dedupe_string *)
  impact : float prop;  (** impact *)
  incident_tags : (string * string prop) list option; [@option]
      (** incident_tags *)
  summary : string prop option; [@option]  (** summary *)
  title : string prop;  (** title *)
  notification_target : incident_template__notification_target list;
}
[@@deriving yojson_of]
(** incident_template *)

type integration__pagerduty = {
  name : string prop;  (** name *)
  secret_id : string prop;  (** secret_id *)
  service_id : string prop;  (** service_id *)
}
[@@deriving yojson_of]
(** integration__pagerduty *)

type integration = { pagerduty : integration__pagerduty list }
[@@deriving yojson_of]
(** integration *)

type aws_ssmincidents_response_plan = {
  chat_channel : string prop list option; [@option]
      (** chat_channel *)
  display_name : string prop option; [@option]  (** display_name *)
  engagements : string prop list option; [@option]
      (** engagements *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  action : action list;
  incident_template : incident_template list;
  integration : integration list;
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan *)

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

let action ~ssm_automation () : action = { ssm_automation }

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

let integration ~pagerduty () : integration = { pagerduty }

let aws_ssmincidents_response_plan ?chat_channel ?display_name
    ?engagements ?id ?tags ?tags_all ~name ~action ~incident_template
    ~integration () : aws_ssmincidents_response_plan =
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

let register ?tf_module ?chat_channel ?display_name ?engagements ?id
    ?tags ?tags_all ~name ~action ~incident_template ~integration
    __resource_id =
  let __resource_type = "aws_ssmincidents_response_plan" in
  let __resource =
    aws_ssmincidents_response_plan ?chat_channel ?display_name
      ?engagements ?id ?tags ?tags_all ~name ~action
      ~incident_template ~integration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmincidents_response_plan __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       chat_channel =
         Prop.computed __resource_type __resource_id "chat_channel";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       engagements =
         Prop.computed __resource_type __resource_id "engagements";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
