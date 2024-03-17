(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_shield_drt_access_role_arn_association__timeouts
type aws_shield_drt_access_role_arn_association
type t = private { id : string prop; role_arn : string prop }

val aws_shield_drt_access_role_arn_association :
  ?timeouts:aws_shield_drt_access_role_arn_association__timeouts ->
  role_arn:string prop ->
  string ->
  t
