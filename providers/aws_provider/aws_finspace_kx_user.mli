(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_user__timeouts
type aws_finspace_kx_user

val aws_finspace_kx_user :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_finspace_kx_user__timeouts ->
  environment_id:string prop ->
  iam_role:string prop ->
  name:string prop ->
  string ->
  unit
