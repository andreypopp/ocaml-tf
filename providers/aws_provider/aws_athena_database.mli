(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_database__acl_configuration
type aws_athena_database__encryption_configuration
type aws_athena_database

type t = private {
  bucket : string prop;
  comment : string prop;
  expected_bucket_owner : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  properties : (string * string) list prop;
}

val aws_athena_database :
  ?bucket:string prop ->
  ?comment:string prop ->
  ?expected_bucket_owner:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?properties:(string * string prop) list ->
  name:string prop ->
  acl_configuration:aws_athena_database__acl_configuration list ->
  encryption_configuration:
    aws_athena_database__encryption_configuration list ->
  string ->
  t
