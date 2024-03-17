(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_website_configuration__error_document
type aws_s3_bucket_website_configuration__index_document
type aws_s3_bucket_website_configuration__redirect_all_requests_to
type aws_s3_bucket_website_configuration__routing_rule__condition
type aws_s3_bucket_website_configuration__routing_rule__redirect
type aws_s3_bucket_website_configuration__routing_rule
type aws_s3_bucket_website_configuration

val aws_s3_bucket_website_configuration :
  ?expected_bucket_owner:string ->
  bucket:string ->
  error_document:
    aws_s3_bucket_website_configuration__error_document list ->
  index_document:
    aws_s3_bucket_website_configuration__index_document list ->
  redirect_all_requests_to:
    aws_s3_bucket_website_configuration__redirect_all_requests_to
    list ->
  routing_rule:aws_s3_bucket_website_configuration__routing_rule list ->
  string ->
  unit
