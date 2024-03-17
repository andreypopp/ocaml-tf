(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_gcm_channel

type t = private {
  api_key : string prop;
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
}

val aws_pinpoint_gcm_channel :
  ?enabled:bool prop ->
  ?id:string prop ->
  api_key:string prop ->
  application_id:string prop ->
  string ->
  t
