(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chime_voice_connector_streaming__media_insights_configuration
type aws_chime_voice_connector_streaming

val aws_chime_voice_connector_streaming :
  ?disabled:bool ->
  ?streaming_notification_targets:string list ->
  data_retention:float ->
  voice_connector_id:string ->
  media_insights_configuration:
    aws_chime_voice_connector_streaming__media_insights_configuration
    list ->
  string ->
  unit
