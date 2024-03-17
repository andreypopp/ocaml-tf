(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_user__timeouts
type aws_finspace_kx_user

val aws_finspace_kx_user :
  ?tags:(string * string) list ->
  ?timeouts:aws_finspace_kx_user__timeouts ->
  environment_id:string ->
  iam_role:string ->
  name:string ->
  string ->
  unit
