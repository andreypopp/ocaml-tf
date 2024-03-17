(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chime_voice_connector_termination_credentials__credentials
type aws_chime_voice_connector_termination_credentials

type t = private {
  id : string prop;
  voice_connector_id : string prop;
}

val aws_chime_voice_connector_termination_credentials :
  ?id:string prop ->
  voice_connector_id:string prop ->
  credentials:
    aws_chime_voice_connector_termination_credentials__credentials
    list ->
  string ->
  t
