(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type domain_name_configuration

val domain_name_configuration :
  ?ownership_verification_certificate_arn:string prop ->
  certificate_arn:string prop ->
  endpoint_type:string prop ->
  security_policy:string prop ->
  unit ->
  domain_name_configuration

type mutual_tls_authentication

val mutual_tls_authentication :
  ?truststore_version:string prop ->
  truststore_uri:string prop ->
  unit ->
  mutual_tls_authentication

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_apigatewayv2_domain_name

val aws_apigatewayv2_domain_name :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mutual_tls_authentication:mutual_tls_authentication list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  domain_name_configuration:domain_name_configuration list ->
  unit ->
  aws_apigatewayv2_domain_name

val yojson_of_aws_apigatewayv2_domain_name :
  aws_apigatewayv2_domain_name -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_mapping_selection_expression : string prop;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mutual_tls_authentication:mutual_tls_authentication list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  domain_name_configuration:domain_name_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mutual_tls_authentication:mutual_tls_authentication list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  domain_name_configuration:domain_name_configuration list ->
  string ->
  t Tf_core.resource
