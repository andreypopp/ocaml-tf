(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_role__inline_policy
type aws_iam_role

val aws_iam_role :
  ?description:string ->
  ?force_detach_policies:bool ->
  ?id:string ->
  ?managed_policy_arns:string list ->
  ?max_session_duration:float ->
  ?name:string ->
  ?name_prefix:string ->
  ?path:string ->
  ?permissions_boundary:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  assume_role_policy:string ->
  inline_policy:aws_iam_role__inline_policy list ->
  string ->
  unit
