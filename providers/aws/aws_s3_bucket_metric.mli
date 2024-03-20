(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  ?access_point:string prop ->
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  filter

type aws_s3_bucket_metric

val aws_s3_bucket_metric :
  ?id:string prop ->
  bucket:string prop ->
  name:string prop ->
  filter:filter list ->
  unit ->
  aws_s3_bucket_metric

val yojson_of_aws_s3_bucket_metric : aws_s3_bucket_metric -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket:string prop ->
  name:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  bucket:string prop ->
  name:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
