(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint_configuration = {
  types : string prop list;  (** types *)
}

type aws_api_gateway_domain_name

val aws_api_gateway_domain_name :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
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
  certificate_name : string prop;
  certificate_upload_date : string prop;
  cloudfront_domain_name : string prop;
  cloudfront_zone_id : string prop;
  domain_name : string prop;
  endpoint_configuration : endpoint_configuration list prop;
  id : string prop;
  regional_certificate_arn : string prop;
  regional_certificate_name : string prop;
  regional_domain_name : string prop;
  regional_zone_id : string prop;
  security_policy : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
