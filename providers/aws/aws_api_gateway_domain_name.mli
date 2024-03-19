(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  domain_name:string prop ->
  endpoint_configuration:endpoint_configuration list ->
  mutual_tls_authentication:mutual_tls_authentication list ->
  unit ->
  aws_api_gateway_domain_name

val yojson_of_aws_api_gateway_domain_name :
  aws_api_gateway_domain_name -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  domain_name:string prop ->
  endpoint_configuration:endpoint_configuration list ->
  mutual_tls_authentication:mutual_tls_authentication list ->
  string ->
  t
