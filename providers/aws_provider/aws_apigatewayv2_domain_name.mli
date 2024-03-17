(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_domain_name__domain_name_configuration
type aws_apigatewayv2_domain_name__mutual_tls_authentication
type aws_apigatewayv2_domain_name__timeouts
type aws_apigatewayv2_domain_name

val aws_apigatewayv2_domain_name :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_apigatewayv2_domain_name__timeouts ->
  domain_name:string ->
  domain_name_configuration:
    aws_apigatewayv2_domain_name__domain_name_configuration list ->
  mutual_tls_authentication:
    aws_apigatewayv2_domain_name__mutual_tls_authentication list ->
  string ->
  unit
