(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_database__acl_configuration
type aws_athena_database__encryption_configuration
type aws_athena_database

val aws_athena_database :
  ?bucket:string ->
  ?comment:string ->
  ?expected_bucket_owner:string ->
  ?force_destroy:bool ->
  ?properties:(string * string) list ->
  name:string ->
  acl_configuration:aws_athena_database__acl_configuration list ->
  encryption_configuration:
    aws_athena_database__encryption_configuration list ->
  string ->
  unit
