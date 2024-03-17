(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_adm_channel

type t = private {
  application_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop;
  id : string prop;
}

val aws_pinpoint_adm_channel :
  ?enabled:bool prop ->
  ?id:string prop ->
  application_id:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  string ->
  t
