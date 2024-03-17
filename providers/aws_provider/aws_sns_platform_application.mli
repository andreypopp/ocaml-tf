(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_platform_application

val aws_sns_platform_application :
  ?apple_platform_bundle_id:string ->
  ?apple_platform_team_id:string ->
  ?event_delivery_failure_topic_arn:string ->
  ?event_endpoint_created_topic_arn:string ->
  ?event_endpoint_deleted_topic_arn:string ->
  ?event_endpoint_updated_topic_arn:string ->
  ?failure_feedback_role_arn:string ->
  ?id:string ->
  ?platform_principal:string ->
  ?success_feedback_role_arn:string ->
  ?success_feedback_sample_rate:string ->
  name:string ->
  platform:string ->
  platform_credential:string ->
  string ->
  unit
