(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user_pool_domain

val aws_cognito_user_pool_domain :
  ?certificate_arn:string prop ->
  ?id:string prop ->
  domain:string prop ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_user_pool_domain

val yojson_of_aws_cognito_user_pool_domain :
  aws_cognito_user_pool_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aws_account_id : string prop;
  certificate_arn : string prop;
  cloudfront_distribution : string prop;
  cloudfront_distribution_arn : string prop;
  cloudfront_distribution_zone_id : string prop;
  domain : string prop;
  id : string prop;
  s3_bucket : string prop;
  user_pool_id : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_arn:string prop ->
  ?id:string prop ->
  domain:string prop ->
  user_pool_id:string prop ->
  string ->
  t

val make :
  ?certificate_arn:string prop ->
  ?id:string prop ->
  domain:string prop ->
  user_pool_id:string prop ->
  string ->
  t Tf_core.resource
