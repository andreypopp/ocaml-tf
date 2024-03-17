(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_domain_name__domain_name_configuration
type aws_apigatewayv2_domain_name__mutual_tls_authentication
type aws_apigatewayv2_domain_name__timeouts
type aws_apigatewayv2_domain_name

val aws_apigatewayv2_domain_name :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_apigatewayv2_domain_name__timeouts ->
  domain_name:string prop ->
  domain_name_configuration:
    aws_apigatewayv2_domain_name__domain_name_configuration list ->
  mutual_tls_authentication:
    aws_apigatewayv2_domain_name__mutual_tls_authentication list ->
  string ->
  unit
