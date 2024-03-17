(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_workteam__member_definition__cognito_member_definition

type aws_sagemaker_workteam__member_definition__oidc_member_definition
type aws_sagemaker_workteam__member_definition
type aws_sagemaker_workteam__notification_configuration
type aws_sagemaker_workteam

val aws_sagemaker_workteam :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  description:string prop ->
  workforce_name:string prop ->
  workteam_name:string prop ->
  member_definition:aws_sagemaker_workteam__member_definition list ->
  notification_configuration:
    aws_sagemaker_workteam__notification_configuration list ->
  string ->
  unit
