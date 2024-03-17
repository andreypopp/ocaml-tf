(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_domain_name__endpoint_configuration
type aws_api_gateway_domain_name__mutual_tls_authentication
type aws_api_gateway_domain_name

val aws_api_gateway_domain_name :
  ?certificate_arn:string ->
  ?certificate_body:string ->
  ?certificate_chain:string ->
  ?certificate_name:string ->
  ?certificate_private_key:string ->
  ?regional_certificate_arn:string ->
  ?regional_certificate_name:string ->
  ?tags:(string * string) list ->
  domain_name:string ->
  endpoint_configuration:
    aws_api_gateway_domain_name__endpoint_configuration list ->
  mutual_tls_authentication:
    aws_api_gateway_domain_name__mutual_tls_authentication list ->
  string ->
  unit
