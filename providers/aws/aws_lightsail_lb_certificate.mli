(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type domain_validation_records = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}

type aws_lightsail_lb_certificate

val aws_lightsail_lb_certificate :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?subject_alternative_names:string prop list ->
  lb_name:string prop ->
  name:string prop ->
  unit ->
  aws_lightsail_lb_certificate

val yojson_of_aws_lightsail_lb_certificate :
  aws_lightsail_lb_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  domain_validation_records : domain_validation_records list prop;
  id : string prop;
  lb_name : string prop;
  name : string prop;
  subject_alternative_names : string list prop;
  support_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain_name:string prop ->
  ?id:string prop ->
  ?subject_alternative_names:string prop list ->
  lb_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?subject_alternative_names:string prop list ->
  lb_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
