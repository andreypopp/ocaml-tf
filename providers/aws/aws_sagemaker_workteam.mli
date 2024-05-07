(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type member_definition__cognito_member_definition

val member_definition__cognito_member_definition :
  client_id:string prop ->
  user_group:string prop ->
  user_pool:string prop ->
  unit ->
  member_definition__cognito_member_definition

type member_definition__oidc_member_definition

val member_definition__oidc_member_definition :
  groups:string prop list ->
  unit ->
  member_definition__oidc_member_definition

type member_definition

val member_definition :
  ?cognito_member_definition:
    member_definition__cognito_member_definition list ->
  ?oidc_member_definition:
    member_definition__oidc_member_definition list ->
  unit ->
  member_definition

type notification_configuration

val notification_configuration :
  ?notification_topic_arn:string prop ->
  unit ->
  notification_configuration

type aws_sagemaker_workteam

val aws_sagemaker_workteam :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?notification_configuration:notification_configuration list ->
  description:string prop ->
  workforce_name:string prop ->
  workteam_name:string prop ->
  member_definition:member_definition list ->
  unit ->
  aws_sagemaker_workteam

val yojson_of_aws_sagemaker_workteam : aws_sagemaker_workteam -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  subdomain : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workforce_name : string prop;
  workteam_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?notification_configuration:notification_configuration list ->
  description:string prop ->
  workforce_name:string prop ->
  workteam_name:string prop ->
  member_definition:member_definition list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?notification_configuration:notification_configuration list ->
  description:string prop ->
  workforce_name:string prop ->
  workteam_name:string prop ->
  member_definition:member_definition list ->
  string ->
  t Tf_core.resource
