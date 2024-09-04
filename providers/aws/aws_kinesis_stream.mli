(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type stream_mode_details

val stream_mode_details :
  stream_mode:string prop -> unit -> stream_mode_details

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_kinesis_stream

val aws_kinesis_stream :
  ?arn:string prop ->
  ?encryption_type:string prop ->
  ?enforce_consumer_deletion:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?retention_period:float prop ->
  ?shard_count:float prop ->
  ?shard_level_metrics:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?stream_mode_details:stream_mode_details list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_kinesis_stream

val yojson_of_aws_kinesis_stream : aws_kinesis_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  encryption_type : string prop;
  enforce_consumer_deletion : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  retention_period : float prop;
  shard_count : float prop;
  shard_level_metrics : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?encryption_type:string prop ->
  ?enforce_consumer_deletion:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?retention_period:float prop ->
  ?shard_count:float prop ->
  ?shard_level_metrics:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?stream_mode_details:stream_mode_details list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?encryption_type:string prop ->
  ?enforce_consumer_deletion:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?retention_period:float prop ->
  ?shard_count:float prop ->
  ?shard_level_metrics:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?stream_mode_details:stream_mode_details list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
