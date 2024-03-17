(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_multi_region_access_point_policy__details
type aws_s3control_multi_region_access_point_policy__timeouts
type aws_s3control_multi_region_access_point_policy

val aws_s3control_multi_region_access_point_policy :
  ?account_id:string ->
  ?id:string ->
  ?timeouts:aws_s3control_multi_region_access_point_policy__timeouts ->
  details:
    aws_s3control_multi_region_access_point_policy__details list ->
  string ->
  unit
