(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint_configuration

val endpoint_configuration :
  types:string prop list -> unit -> endpoint_configuration

type mutual_tls_authentication

val mutual_tls_authentication :
  ?truststore_version:string prop ->
  truststore_uri:string prop ->
  unit ->
  mutual_tls_authentication

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?endpoint_configuration:endpoint_configuration list ->
  ?mutual_tls_authentication:mutual_tls_authentication list ->
  domain_name:string prop ->
  unit ->
  aws_api_gateway_domain_name

val yojson_of_aws_api_gateway_domain_name :
  aws_api_gateway_domain_name -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  certificate_arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  certificate_name : string prop;
  certificate_private_key : string prop;
  certificate_upload_date : string prop;
  cloudfront_domain_name : string prop;
  cloudfront_zone_id : string prop;
  domain_name : string prop;
  id : string prop;
  ownership_verification_certificate_arn : string prop;
  regional_certificate_arn : string prop;
  regional_certificate_name : string prop;
  regional_domain_name : string prop;
  regional_zone_id : string prop;
  security_policy : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?endpoint_configuration:endpoint_configuration list ->
  ?mutual_tls_authentication:mutual_tls_authentication list ->
  domain_name:string prop ->
  string ->
  t

val make :
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?endpoint_configuration:endpoint_configuration list ->
  ?mutual_tls_authentication:mutual_tls_authentication list ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
