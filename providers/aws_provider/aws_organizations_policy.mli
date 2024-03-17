(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_policy

val aws_organizations_policy :
  ?description:string ->
  ?id:string ->
  ?skip_destroy:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?type_:string ->
  content:string ->
  name:string ->
  string ->
  unit
