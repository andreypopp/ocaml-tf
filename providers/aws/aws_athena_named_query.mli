(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_named_query

type t = private {
  database : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  query : string prop;
  workgroup : string prop;
}

val aws_athena_named_query :
  ?description:string prop ->
  ?id:string prop ->
  ?workgroup:string prop ->
  database:string prop ->
  name:string prop ->
  query:string prop ->
  string ->
  t
