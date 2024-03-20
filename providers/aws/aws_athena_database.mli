(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type acl_configuration

val acl_configuration :
  s3_acl_option:string prop -> unit -> acl_configuration

type encryption_configuration

val encryption_configuration :
  ?kms_key:string prop ->
  encryption_option:string prop ->
  unit ->
  encryption_configuration

type aws_athena_database

val aws_athena_database :
  ?bucket:string prop ->
  ?comment:string prop ->
  ?expected_bucket_owner:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?properties:(string * string prop) list ->
  name:string prop ->
  acl_configuration:acl_configuration list ->
  encryption_configuration:encryption_configuration list ->
  unit ->
  aws_athena_database

val yojson_of_aws_athena_database : aws_athena_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  comment : string prop;
  expected_bucket_owner : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  properties : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?bucket:string prop ->
  ?comment:string prop ->
  ?expected_bucket_owner:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?properties:(string * string prop) list ->
  name:string prop ->
  acl_configuration:acl_configuration list ->
  encryption_configuration:encryption_configuration list ->
  string ->
  t

val make :
  ?bucket:string prop ->
  ?comment:string prop ->
  ?expected_bucket_owner:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?properties:(string * string prop) list ->
  name:string prop ->
  acl_configuration:acl_configuration list ->
  encryption_configuration:encryption_configuration list ->
  string ->
  t Tf_core.resource
