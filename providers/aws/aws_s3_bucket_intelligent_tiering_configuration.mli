(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  bucket:string prop ->
  name:string prop ->
  filter:filter list ->
  tiering:tiering list ->
  unit ->
  aws_s3_bucket_intelligent_tiering_configuration

val yojson_of_aws_s3_bucket_intelligent_tiering_configuration :
  aws_s3_bucket_intelligent_tiering_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  bucket:string prop ->
  name:string prop ->
  filter:filter list ->
  tiering:tiering list ->
  string ->
  t
