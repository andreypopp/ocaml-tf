(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3_directory_buckets

val aws_s3_directory_buckets : unit -> aws_s3_directory_buckets

val yojson_of_aws_s3_directory_buckets :
  aws_s3_directory_buckets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  buckets : string list prop;
  id : string prop;
}

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
