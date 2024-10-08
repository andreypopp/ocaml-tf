(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ivs_stream_key

val aws_ivs_stream_key :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  channel_arn:string prop ->
  unit ->
  aws_ivs_stream_key

val yojson_of_aws_ivs_stream_key : aws_ivs_stream_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  channel_arn : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  channel_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  channel_arn:string prop ->
  string ->
  t Tf_core.resource
