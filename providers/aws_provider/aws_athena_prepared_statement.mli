(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_prepared_statement__timeouts
type aws_athena_prepared_statement

val aws_athena_prepared_statement :
  ?description:string ->
  ?id:string ->
  ?timeouts:aws_athena_prepared_statement__timeouts ->
  name:string ->
  query_statement:string ->
  workgroup:string ->
  string ->
  unit
