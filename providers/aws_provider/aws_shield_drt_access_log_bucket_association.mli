(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_shield_drt_access_log_bucket_association__timeouts
type aws_shield_drt_access_log_bucket_association

val aws_shield_drt_access_log_bucket_association :
  ?timeouts:aws_shield_drt_access_log_bucket_association__timeouts ->
  log_bucket:string ->
  role_arn_association_id:string ->
  string ->
  unit
