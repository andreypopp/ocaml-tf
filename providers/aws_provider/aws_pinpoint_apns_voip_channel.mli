(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_apns_voip_channel

val aws_pinpoint_apns_voip_channel :
  ?bundle_id:string prop ->
  ?certificate:string prop ->
  ?default_authentication_method:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?private_key:string prop ->
  ?team_id:string prop ->
  ?token_key:string prop ->
  ?token_key_id:string prop ->
  application_id:string prop ->
  string ->
  unit
