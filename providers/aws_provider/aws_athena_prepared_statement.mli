(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_prepared_statement__timeouts
type aws_athena_prepared_statement

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  query_statement : string prop;
  workgroup : string prop;
}

val aws_athena_prepared_statement :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_athena_prepared_statement__timeouts ->
  name:string prop ->
  query_statement:string prop ->
  workgroup:string prop ->
  string ->
  t
