(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kinesis_video_stream__timeouts
type aws_kinesis_video_stream

val aws_kinesis_video_stream :
  ?data_retention_in_hours:float ->
  ?device_name:string ->
  ?media_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_kinesis_video_stream__timeouts ->
  name:string ->
  string ->
  unit
