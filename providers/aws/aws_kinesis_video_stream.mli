(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_kinesis_video_stream

val aws_kinesis_video_stream :
  ?data_retention_in_hours:float prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?media_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_kinesis_video_stream

val yojson_of_aws_kinesis_video_stream :
  aws_kinesis_video_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  data_retention_in_hours : float prop;
  device_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  media_type : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?data_retention_in_hours:float prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?media_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?data_retention_in_hours:float prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?media_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
