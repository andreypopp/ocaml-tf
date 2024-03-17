(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_email_identity__dkim_signing_attributes
type aws_sesv2_email_identity

type t = private {
  arn : string prop;
  configuration_set_name : string prop;
  email_identity : string prop;
  id : string prop;
  identity_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verified_for_sending_status : bool prop;
}

val aws_sesv2_email_identity :
  ?configuration_set_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  email_identity:string prop ->
  dkim_signing_attributes:
    aws_sesv2_email_identity__dkim_signing_attributes list ->
  string ->
  t
