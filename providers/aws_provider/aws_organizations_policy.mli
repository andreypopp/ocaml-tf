(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_policy

val aws_organizations_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  content:string prop ->
  name:string prop ->
  string ->
  unit
