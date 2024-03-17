(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_lb_certificate__domain_validation_records = {
  domain_name : string;  (** domain_name *)
  resource_record_name : string;  (** resource_record_name *)
  resource_record_type : string;  (** resource_record_type *)
  resource_record_value : string;  (** resource_record_value *)
}

type aws_lightsail_lb_certificate

val aws_lightsail_lb_certificate :
  ?domain_name:string ->
  ?id:string ->
  ?subject_alternative_names:string list ->
  lb_name:string ->
  name:string ->
  string ->
  unit
