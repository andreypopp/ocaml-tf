(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  filter

type tiering

val tiering :
  access_tier:string prop -> days:float prop -> unit -> tiering

type aws_s3_bucket_intelligent_tiering_configuration

val aws_s3_bucket_intelligent_tiering_configuration :
  ?id:string prop ->
  ?status:string prop ->
  ?filter:filter list ->
  bucket:string prop ->
  name:string prop ->
  tiering:tiering list ->
  unit ->
  aws_s3_bucket_intelligent_tiering_configuration

val yojson_of_aws_s3_bucket_intelligent_tiering_configuration :
  aws_s3_bucket_intelligent_tiering_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  ?filter:filter list ->
  bucket:string prop ->
  name:string prop ->
  tiering:tiering list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?status:string prop ->
  ?filter:filter list ->
  bucket:string prop ->
  name:string prop ->
  tiering:tiering list ->
  string ->
  t Tf_core.resource
