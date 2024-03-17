(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_email_channel

val aws_pinpoint_email_channel :
  ?configuration_set:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  application_id:string prop ->
  from_address:string prop ->
  identity:string prop ->
  string ->
  unit
