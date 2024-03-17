(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_role__inline_policy
type aws_iam_role

val aws_iam_role :
  ?description:string ->
  ?force_detach_policies:bool ->
  ?max_session_duration:float ->
  ?path:string ->
  ?permissions_boundary:string ->
  ?tags:(string * string) list ->
  assume_role_policy:string ->
  inline_policy:aws_iam_role__inline_policy list ->
  string ->
  unit
