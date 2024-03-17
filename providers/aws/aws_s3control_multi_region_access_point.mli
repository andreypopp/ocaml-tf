(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_multi_region_access_point__details__public_access_block

type aws_s3control_multi_region_access_point__details__region
type aws_s3control_multi_region_access_point__details
type aws_s3control_multi_region_access_point__timeouts
type aws_s3control_multi_region_access_point

type t = private {
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  status : string prop;
}

val aws_s3control_multi_region_access_point :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:aws_s3control_multi_region_access_point__timeouts ->
  details:aws_s3control_multi_region_access_point__details list ->
  string ->
  t
