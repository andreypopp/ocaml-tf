(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_sns_platform_application

val aws_sns_platform_application :
  ?apple_platform_bundle_id:string prop ->
  ?apple_platform_team_id:string prop ->
  ?event_delivery_failure_topic_arn:string prop ->
  ?event_endpoint_created_topic_arn:string prop ->
  ?event_endpoint_deleted_topic_arn:string prop ->
  ?event_endpoint_updated_topic_arn:string prop ->
  ?failure_feedback_role_arn:string prop ->
  ?id:string prop ->
  ?platform_principal:string prop ->
  ?success_feedback_role_arn:string prop ->
  ?success_feedback_sample_rate:string prop ->
  name:string prop ->
  platform:string prop ->
  platform_credential:string prop ->
  unit ->
  aws_sns_platform_application

val yojson_of_aws_sns_platform_application :
  aws_sns_platform_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  apple_platform_bundle_id : string prop;
  apple_platform_team_id : string prop;
  arn : string prop;
  event_delivery_failure_topic_arn : string prop;
  event_endpoint_created_topic_arn : string prop;
  event_endpoint_deleted_topic_arn : string prop;
  event_endpoint_updated_topic_arn : string prop;
  failure_feedback_role_arn : string prop;
  id : string prop;
  name : string prop;
  platform : string prop;
  platform_credential : string prop;
  platform_principal : string prop;
  success_feedback_role_arn : string prop;
  success_feedback_sample_rate : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?apple_platform_bundle_id:string prop ->
  ?apple_platform_team_id:string prop ->
  ?event_delivery_failure_topic_arn:string prop ->
  ?event_endpoint_created_topic_arn:string prop ->
  ?event_endpoint_deleted_topic_arn:string prop ->
  ?event_endpoint_updated_topic_arn:string prop ->
  ?failure_feedback_role_arn:string prop ->
  ?id:string prop ->
  ?platform_principal:string prop ->
  ?success_feedback_role_arn:string prop ->
  ?success_feedback_sample_rate:string prop ->
  name:string prop ->
  platform:string prop ->
  platform_credential:string prop ->
  string ->
  t
