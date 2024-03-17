(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_email_channel

type t = private {
  application_id : string prop;
  configuration_set : string prop;
  enabled : bool prop;
  from_address : string prop;
  id : string prop;
  identity : string prop;
  messages_per_second : float prop;
  role_arn : string prop;
}

val aws_pinpoint_email_channel :
  ?configuration_set:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  application_id:string prop ->
  from_address:string prop ->
  identity:string prop ->
  string ->
  t
