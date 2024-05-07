(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificate_validation_records = {
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type aws_apprunner_custom_domain_association

val aws_apprunner_custom_domain_association :
  ?enable_www_subdomain:bool prop ->
  ?id:string prop ->
  domain_name:string prop ->
  service_arn:string prop ->
  unit ->
  aws_apprunner_custom_domain_association

val yojson_of_aws_apprunner_custom_domain_association :
  aws_apprunner_custom_domain_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_validation_records :
    certificate_validation_records list prop;
  dns_target : string prop;
  domain_name : string prop;
  enable_www_subdomain : bool prop;
  id : string prop;
  service_arn : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_www_subdomain:bool prop ->
  ?id:string prop ->
  domain_name:string prop ->
  service_arn:string prop ->
  string ->
  t

val make :
  ?enable_www_subdomain:bool prop ->
  ?id:string prop ->
  domain_name:string prop ->
  service_arn:string prop ->
  string ->
  t Tf_core.resource
