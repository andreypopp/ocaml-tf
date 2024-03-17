(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_named_query

val aws_athena_named_query :
  ?description:string ->
  ?workgroup:string ->
  database:string ->
  name:string ->
  query:string ->
  string ->
  unit
