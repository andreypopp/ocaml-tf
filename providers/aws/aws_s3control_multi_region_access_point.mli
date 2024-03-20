(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type details__public_access_block

val details__public_access_block :
  ?block_public_acls:bool prop ->
  ?block_public_policy:bool prop ->
  ?ignore_public_acls:bool prop ->
  ?restrict_public_buckets:bool prop ->
  unit ->
  details__public_access_block

type details__region

val details__region :
  ?bucket_account_id:string prop ->
  bucket:string prop ->
  unit ->
  details__region

type details

val details :
  name:string prop ->
  public_access_block:details__public_access_block list ->
  region:details__region list ->
  unit ->
  details

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_s3control_multi_region_access_point

val aws_s3control_multi_region_access_point :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  details:details list ->
  unit ->
  aws_s3control_multi_region_access_point

val yojson_of_aws_s3control_multi_region_access_point :
  aws_s3control_multi_region_access_point -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  details:details list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  details:details list ->
  string ->
  t Tf_core.resource
