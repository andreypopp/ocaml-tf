(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_policy

val aws_organizations_policy :
  ?description:string ->
  ?skip_destroy:bool ->
  ?tags:(string * string) list ->
  ?type_:string ->
  content:string ->
  name:string ->
  string ->
  unit
