(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type location

val location :
  ?type_:string prop -> name:string prop -> unit -> location

type aws_s3_directory_bucket

val aws_s3_directory_bucket :
  ?data_redundancy:string prop ->
  ?force_destroy:bool prop ->
  ?type_:string prop ->
  bucket:string prop ->
  location:location list ->
  unit ->
  aws_s3_directory_bucket

val yojson_of_aws_s3_directory_bucket :
  aws_s3_directory_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  bucket : string prop;
  data_redundancy : string prop;
  force_destroy : bool prop;
  id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?data_redundancy:string prop ->
  ?force_destroy:bool prop ->
  ?type_:string prop ->
  bucket:string prop ->
  location:location list ->
  string ->
  t
