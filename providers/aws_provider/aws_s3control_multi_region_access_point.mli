(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_multi_region_access_point__details__public_access_block

type aws_s3control_multi_region_access_point__details__region
type aws_s3control_multi_region_access_point__details
type aws_s3control_multi_region_access_point__timeouts
type aws_s3control_multi_region_access_point

val aws_s3control_multi_region_access_point :
  ?account_id:string ->
  ?id:string ->
  ?timeouts:aws_s3control_multi_region_access_point__timeouts ->
  details:aws_s3control_multi_region_access_point__details list ->
  string ->
  unit
