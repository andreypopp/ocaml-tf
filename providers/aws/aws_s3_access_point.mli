(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type public_access_block_configuration

val public_access_block_configuration :
  ?block_public_acls:bool prop ->
  ?block_public_policy:bool prop ->
  ?ignore_public_acls:bool prop ->
  ?restrict_public_buckets:bool prop ->
  unit ->
  public_access_block_configuration

type vpc_configuration

val vpc_configuration :
  vpc_id:string prop -> unit -> vpc_configuration

type aws_s3_access_point

val aws_s3_access_point :
  ?account_id:string prop ->
  ?bucket_account_id:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?public_access_block_configuration:
    public_access_block_configuration list ->
  ?vpc_configuration:vpc_configuration list ->
  bucket:string prop ->
  name:string prop ->
  unit ->
  aws_s3_access_point

val yojson_of_aws_s3_access_point : aws_s3_access_point -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_account_id : string prop;
  domain_name : string prop;
  endpoints : (string * string) list prop;
  has_public_access_policy : bool prop;
  id : string prop;
  name : string prop;
  network_origin : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?bucket_account_id:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?public_access_block_configuration:
    public_access_block_configuration list ->
  ?vpc_configuration:vpc_configuration list ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?bucket_account_id:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?public_access_block_configuration:
    public_access_block_configuration list ->
  ?vpc_configuration:vpc_configuration list ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
