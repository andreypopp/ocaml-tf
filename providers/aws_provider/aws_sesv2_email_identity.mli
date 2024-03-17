(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_email_identity__dkim_signing_attributes
type aws_sesv2_email_identity

val aws_sesv2_email_identity :
  ?configuration_set_name:string ->
  ?tags:(string * string) list ->
  email_identity:string ->
  dkim_signing_attributes:
    aws_sesv2_email_identity__dkim_signing_attributes list ->
  string ->
  unit
