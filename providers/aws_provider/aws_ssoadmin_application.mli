(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_application__portal_options__sign_in_options
type aws_ssoadmin_application__portal_options
type aws_ssoadmin_application

val aws_ssoadmin_application :
  ?client_token:string ->
  ?description:string ->
  ?tags:(string * string) list ->
  application_provider_arn:string ->
  instance_arn:string ->
  name:string ->
  portal_options:aws_ssoadmin_application__portal_options list ->
  string ->
  unit
