(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_multi_region_access_point_policy__details
type aws_s3control_multi_region_access_point_policy__timeouts
type aws_s3control_multi_region_access_point_policy

type t = private {
  account_id : string prop;
  established : string prop;
  id : string prop;
  proposed : string prop;
}

val aws_s3control_multi_region_access_point_policy :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:aws_s3control_multi_region_access_point_policy__timeouts ->
  details:
    aws_s3control_multi_region_access_point_policy__details list ->
  string ->
  t
