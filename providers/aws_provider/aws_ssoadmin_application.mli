(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_application__portal_options__sign_in_options
type aws_ssoadmin_application__portal_options
type aws_ssoadmin_application

val aws_ssoadmin_application :
  ?client_token:string prop ->
  ?description:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  application_provider_arn:string prop ->
  instance_arn:string prop ->
  name:string prop ->
  portal_options:aws_ssoadmin_application__portal_options list ->
  string ->
  unit
