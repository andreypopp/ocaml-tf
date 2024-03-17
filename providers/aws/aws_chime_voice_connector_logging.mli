(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chime_voice_connector_logging

type t = private {
  enable_media_metric_logs : bool prop;
  enable_sip_logs : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

val aws_chime_voice_connector_logging :
  ?enable_media_metric_logs:bool prop ->
  ?enable_sip_logs:bool prop ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  string ->
  t
