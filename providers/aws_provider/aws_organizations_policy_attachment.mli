(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_policy_attachment

val aws_organizations_policy_attachment :
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  policy_id:string prop ->
  target_id:string prop ->
  string ->
  unit
