(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudfront_distribution

val aws_cloudfront_distribution :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  unit ->
  aws_cloudfront_distribution

val yojson_of_aws_cloudfront_distribution :
  aws_cloudfront_distribution -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aliases : string list prop;
  arn : string prop;
  domain_name : string prop;
  enabled : bool prop;
  etag : string prop;
  hosted_zone_id : string prop;
  id : string prop;
  in_progress_validation_batches : float prop;
  last_modified_time : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  web_acl_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t Tf_core.resource
