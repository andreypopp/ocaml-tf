(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_user_pool_domain

type t = private {
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

val aws_cognito_user_pool_domain :
  ?certificate_arn:string prop ->
  ?id:string prop ->
  domain:string prop ->
  user_pool_id:string prop ->
  string ->
  t
