(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acm_certificate__options
type aws_acm_certificate__validation_option

type aws_acm_certificate__domain_validation_options = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}

type aws_acm_certificate__renewal_summary = {
  renewal_status : string prop;  (** renewal_status *)
  renewal_status_reason : string prop;  (** renewal_status_reason *)
  updated_at : string prop;  (** updated_at *)
}

type aws_acm_certificate

type t = private {
  arn : string prop;
  certificate_authority_arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  domain_name : string prop;
  domain_validation_options :
    aws_acm_certificate__domain_validation_options list prop;
  early_renewal_duration : string prop;
  id : string prop;
  key_algorithm : string prop;
  not_after : string prop;
  not_before : string prop;
  pending_renewal : bool prop;
  private_key : string prop;
  renewal_eligibility : string prop;
  renewal_summary : aws_acm_certificate__renewal_summary list prop;
  status : string prop;
  subject_alternative_names : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  validation_emails : string list prop;
  validation_method : string prop;
}

val aws_acm_certificate :
  ?certificate_authority_arn:string prop ->
  ?certificate_body:string prop ->
  ?certificate_chain:string prop ->
  ?domain_name:string prop ->
  ?early_renewal_duration:string prop ->
  ?id:string prop ->
  ?key_algorithm:string prop ->
  ?private_key:string prop ->
  ?subject_alternative_names:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?validation_method:string prop ->
  options:aws_acm_certificate__options list ->
  validation_option:aws_acm_certificate__validation_option list ->
  string ->
  t
