(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type rule__default_retention

val rule__default_retention :
  ?days:float prop ->
  ?mode:string prop ->
  ?years:float prop ->
  unit ->
  rule__default_retention

type rule

val rule :
  default_retention:rule__default_retention list -> unit -> rule

type aws_s3_bucket_object_lock_configuration

val aws_s3_bucket_object_lock_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?object_lock_enabled:string prop ->
  ?token:string prop ->
  bucket:string prop ->
  rule:rule list ->
  unit ->
  aws_s3_bucket_object_lock_configuration

val yojson_of_aws_s3_bucket_object_lock_configuration :
  aws_s3_bucket_object_lock_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  object_lock_enabled : string prop;
  token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?object_lock_enabled:string prop ->
  ?token:string prop ->
  bucket:string prop ->
  rule:rule list ->
  string ->
  t
