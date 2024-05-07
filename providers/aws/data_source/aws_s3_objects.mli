(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3_objects

val aws_s3_objects :
  ?delimiter:string prop ->
  ?encoding_type:string prop ->
  ?fetch_owner:bool prop ->
  ?id:string prop ->
  ?max_keys:float prop ->
  ?prefix:string prop ->
  ?request_payer:string prop ->
  ?start_after:string prop ->
  bucket:string prop ->
  unit ->
  aws_s3_objects

val yojson_of_aws_s3_objects : aws_s3_objects -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  common_prefixes : string list prop;
  delimiter : string prop;
  encoding_type : string prop;
  fetch_owner : bool prop;
  id : string prop;
  keys : string list prop;
  max_keys : float prop;
  owners : string list prop;
  prefix : string prop;
  request_charged : string prop;
  request_payer : string prop;
  start_after : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delimiter:string prop ->
  ?encoding_type:string prop ->
  ?fetch_owner:bool prop ->
  ?id:string prop ->
  ?max_keys:float prop ->
  ?prefix:string prop ->
  ?request_payer:string prop ->
  ?start_after:string prop ->
  bucket:string prop ->
  string ->
  t

val make :
  ?delimiter:string prop ->
  ?encoding_type:string prop ->
  ?fetch_owner:bool prop ->
  ?id:string prop ->
  ?max_keys:float prop ->
  ?prefix:string prop ->
  ?request_payer:string prop ->
  ?start_after:string prop ->
  bucket:string prop ->
  string ->
  t Tf_core.resource
