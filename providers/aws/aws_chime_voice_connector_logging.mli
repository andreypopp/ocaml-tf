(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_chime_voice_connector_logging

val aws_chime_voice_connector_logging :
  ?enable_media_metric_logs:bool prop ->
  ?enable_sip_logs:bool prop ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  unit ->
  aws_chime_voice_connector_logging

val yojson_of_aws_chime_voice_connector_logging :
  aws_chime_voice_connector_logging -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enable_media_metric_logs : bool prop;
  enable_sip_logs : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_media_metric_logs:bool prop ->
  ?enable_sip_logs:bool prop ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  string ->
  t

val make :
  ?enable_media_metric_logs:bool prop ->
  ?enable_sip_logs:bool prop ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  string ->
  t Tf_core.resource
