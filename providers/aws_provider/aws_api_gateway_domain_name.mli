(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_domain_name__endpoint_configuration
type aws_api_gateway_domain_name__mutual_tls_authentication
type aws_api_gateway_domain_name

val aws_api_gateway_domain_name :
  ?certificate_arn:string prop ->
  ?certificate_body:string prop ->
  ?certificate_chain:string prop ->
  ?certificate_name:string prop ->
  ?certificate_private_key:string prop ->
  ?id:string prop ->
  ?ownership_verification_certificate_arn:string prop ->
  ?regional_certificate_arn:string prop ->
  ?regional_certificate_name:string prop ->
  ?security_policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  domain_name:string prop ->
  endpoint_configuration:
    aws_api_gateway_domain_name__endpoint_configuration list ->
  mutual_tls_authentication:
    aws_api_gateway_domain_name__mutual_tls_authentication list ->
  string ->
  unit
