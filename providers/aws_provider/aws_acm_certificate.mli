(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acm_certificate__options
type aws_acm_certificate__validation_option

type aws_acm_certificate__domain_validation_options = {
  domain_name : string;  (** domain_name *)
  resource_record_name : string;  (** resource_record_name *)
  resource_record_type : string;  (** resource_record_type *)
  resource_record_value : string;  (** resource_record_value *)
}
[@@deriving yojson_of]

type aws_acm_certificate__renewal_summary = {
  renewal_status : string;  (** renewal_status *)
  renewal_status_reason : string;  (** renewal_status_reason *)
  updated_at : string;  (** updated_at *)
}
[@@deriving yojson_of]

type aws_acm_certificate

val aws_acm_certificate :
  ?certificate_authority_arn:string ->
  ?certificate_body:string ->
  ?certificate_chain:string ->
  ?early_renewal_duration:string ->
  ?private_key:string ->
  ?tags:(string * string) list ->
  options:aws_acm_certificate__options list ->
  validation_option:aws_acm_certificate__validation_option list ->
  string ->
  unit
