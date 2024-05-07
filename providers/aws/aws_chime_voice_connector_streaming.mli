(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type media_insights_configuration

val media_insights_configuration :
  ?configuration_arn:string prop ->
  ?disabled:bool prop ->
  unit ->
  media_insights_configuration

type aws_chime_voice_connector_streaming

val aws_chime_voice_connector_streaming :
  ?disabled:bool prop ->
  ?id:string prop ->
  ?streaming_notification_targets:string prop list ->
  ?media_insights_configuration:media_insights_configuration list ->
  data_retention:float prop ->
  voice_connector_id:string prop ->
  unit ->
  aws_chime_voice_connector_streaming

val yojson_of_aws_chime_voice_connector_streaming :
  aws_chime_voice_connector_streaming -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_retention : float prop;
  disabled : bool prop;
  id : string prop;
  streaming_notification_targets : string list prop;
  voice_connector_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?streaming_notification_targets:string prop list ->
  ?media_insights_configuration:media_insights_configuration list ->
  data_retention:float prop ->
  voice_connector_id:string prop ->
  string ->
  t

val make :
  ?disabled:bool prop ->
  ?id:string prop ->
  ?streaming_notification_targets:string prop list ->
  ?media_insights_configuration:media_insights_configuration list ->
  data_retention:float prop ->
  voice_connector_id:string prop ->
  string ->
  t Tf_core.resource
