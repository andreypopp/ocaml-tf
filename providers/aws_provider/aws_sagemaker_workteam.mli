(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_workteam__member_definition__cognito_member_definition

type aws_sagemaker_workteam__member_definition__oidc_member_definition
type aws_sagemaker_workteam__member_definition
type aws_sagemaker_workteam__notification_configuration
type aws_sagemaker_workteam

val aws_sagemaker_workteam :
  ?tags:(string * string) list ->
  description:string ->
  workforce_name:string ->
  workteam_name:string ->
  member_definition:aws_sagemaker_workteam__member_definition list ->
  notification_configuration:
    aws_sagemaker_workteam__notification_configuration list ->
  string ->
  unit
