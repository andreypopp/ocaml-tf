(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type error_document

val error_document : key:string prop -> unit -> error_document

type index_document

val index_document : suffix:string prop -> unit -> index_document

type redirect_all_requests_to

val redirect_all_requests_to :
  ?protocol:string prop ->
  host_name:string prop ->
  unit ->
  redirect_all_requests_to

type routing_rule__condition

val routing_rule__condition :
  ?http_error_code_returned_equals:string prop ->
  ?key_prefix_equals:string prop ->
  unit ->
  routing_rule__condition

type routing_rule__redirect

val routing_rule__redirect :
  ?host_name:string prop ->
  ?http_redirect_code:string prop ->
  ?protocol:string prop ->
  ?replace_key_prefix_with:string prop ->
  ?replace_key_with:string prop ->
  unit ->
  routing_rule__redirect

type routing_rule

val routing_rule :
  condition:routing_rule__condition list ->
  redirect:routing_rule__redirect list ->
  unit ->
  routing_rule

type aws_s3_bucket_website_configuration

val aws_s3_bucket_website_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?routing_rules:string prop ->
  bucket:string prop ->
  error_document:error_document list ->
  index_document:index_document list ->
  redirect_all_requests_to:redirect_all_requests_to list ->
  routing_rule:routing_rule list ->
  unit ->
  aws_s3_bucket_website_configuration

val yojson_of_aws_s3_bucket_website_configuration :
  aws_s3_bucket_website_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  routing_rules : string prop;
  website_domain : string prop;
  website_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?routing_rules:string prop ->
  bucket:string prop ->
  error_document:error_document list ->
  index_document:index_document list ->
  redirect_all_requests_to:redirect_all_requests_to list ->
  routing_rule:routing_rule list ->
  string ->
  t
