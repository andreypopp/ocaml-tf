(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_custom_domain_association__certificate_validation_records = {
  name : string;  (** name *)
  status : string;  (** status *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type aws_apprunner_custom_domain_association

val aws_apprunner_custom_domain_association :
  ?enable_www_subdomain:bool ->
  domain_name:string ->
  service_arn:string ->
  string ->
  unit
