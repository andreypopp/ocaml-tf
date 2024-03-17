(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kinesis_video_stream__timeouts
type aws_kinesis_video_stream

type t = private {
  arn : string prop;
  creation_time : string prop;
  data_retention_in_hours : float prop;
  device_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  media_type : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

val aws_kinesis_video_stream :
  ?data_retention_in_hours:float prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?media_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_kinesis_video_stream__timeouts ->
  name:string prop ->
  string ->
  t
