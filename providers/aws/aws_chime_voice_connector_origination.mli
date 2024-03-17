(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chime_voice_connector_origination__route
type aws_chime_voice_connector_origination

type t = private {
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

val aws_chime_voice_connector_origination :
  ?disabled:bool prop ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  route:aws_chime_voice_connector_origination__route list ->
  string ->
  t
