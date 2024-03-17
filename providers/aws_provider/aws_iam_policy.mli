(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_policy

val aws_iam_policy :
  ?description:string ->
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?path:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  policy:string ->
  string ->
  unit
