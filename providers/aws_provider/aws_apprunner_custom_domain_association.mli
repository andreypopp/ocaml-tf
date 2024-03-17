(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_custom_domain_association__certificate_validation_records = {
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
  string ->
  unit
