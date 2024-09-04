(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action__ssm_automation__parameter = {
  name : string prop;  (** name *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type action__ssm_automation = {
  document_name : string prop;  (** document_name *)
  document_version : string prop;  (** document_version *)
  dynamic_parameters : string prop Tf_core.assoc;
      (** dynamic_parameters *)
  parameter : action__ssm_automation__parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** parameter *)
  role_arn : string prop;  (** role_arn *)
  target_account : string prop;  (** target_account *)
}

type action = {
  ssm_automation : action__ssm_automation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ssm_automation *)
}

type incident_template__notification_target = {
  sns_topic_arn : string prop;  (** sns_topic_arn *)
}

type incident_template = {
  dedupe_string : string prop;  (** dedupe_string *)
  impact : float prop;  (** impact *)
  incident_tags : string prop Tf_core.assoc;  (** incident_tags *)
  notification_target : incident_template__notification_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** notification_target *)
  summary : string prop;  (** summary *)
  title : string prop;  (** title *)
}

type integration__pagerduty = {
  name : string prop;  (** name *)
  secret_id : string prop;  (** secret_id *)
  service_id : string prop;  (** service_id *)
}

type integration = {
  pagerduty : integration__pagerduty list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pagerduty *)
}

type aws_ssmincidents_response_plan

val aws_ssmincidents_response_plan :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  unit ->
  aws_ssmincidents_response_plan

val yojson_of_aws_ssmincidents_response_plan :
  aws_ssmincidents_response_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : action list prop;
  arn : string prop;
  chat_channel : string list prop;
  display_name : string prop;
  engagements : string list prop;
  id : string prop;
  incident_template : incident_template list prop;
  integration : integration list prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t Tf_core.resource
