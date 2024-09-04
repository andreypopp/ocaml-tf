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
  ?properties:string prop Tf_core.assoc ->
  ?acl_configuration:acl_configuration list ->
  ?encryption_configuration:encryption_configuration list ->
  name:string prop ->
  unit ->
  aws_athena_database

val yojson_of_aws_athena_database : aws_athena_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  comment : string prop;
  expected_bucket_owner : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  properties : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?bucket:string prop ->
  ?comment:string prop ->
  ?expected_bucket_owner:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?properties:string prop Tf_core.assoc ->
  ?acl_configuration:acl_configuration list ->
  ?encryption_configuration:encryption_configuration list ->
  name:string prop ->
  string ->
  t

val make :
  ?bucket:string prop ->
  ?comment:string prop ->
  ?expected_bucket_owner:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?properties:string prop Tf_core.assoc ->
  ?acl_configuration:acl_configuration list ->
  ?encryption_configuration:encryption_configuration list ->
  name:string prop ->
  string ->
  t Tf_core.resource
