(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type public_access_block = {
  block_public_acls : bool prop;  (** block_public_acls *)
  block_public_policy : bool prop;  (** block_public_policy *)
  ignore_public_acls : bool prop;  (** ignore_public_acls *)
  restrict_public_buckets : bool prop;  (** restrict_public_buckets *)
}

type regions = {
  bucket : string prop;  (** bucket *)
  bucket_account_id : string prop;  (** bucket_account_id *)
  region : string prop;  (** region *)
}

type aws_s3control_multi_region_access_point

val aws_s3control_multi_region_access_point :
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_s3control_multi_region_access_point

val yojson_of_aws_s3control_multi_region_access_point :
  aws_s3control_multi_region_access_point -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  public_access_block : public_access_block list prop;
  regions : regions list prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
