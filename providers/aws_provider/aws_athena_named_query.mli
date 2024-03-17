(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_named_query

val aws_athena_named_query :
  ?description:string prop ->
  ?id:string prop ->
  ?workgroup:string prop ->
  database:string prop ->
  name:string prop ->
  query:string prop ->
  string ->
  unit
