(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type domain_validation_options = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}

type renewal_summary = {
  renewal_status : string prop;  (** renewal_status *)
  renewal_status_reason : string prop;  (** renewal_status_reason *)
  updated_at : string prop;  (** updated_at *)
}

type options

val options :
  ?certificate_transparency_logging_preference:string prop ->
  unit ->
  options

type validation_option

val validation_option :
  domain_name:string prop ->
  validation_domain:string prop ->
  unit ->
  validation_option

type aws_acm_certificate

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
  ?options:options list ->
  validation_option:validation_option list ->
  unit ->
  aws_acm_certificate

val yojson_of_aws_acm_certificate : aws_acm_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  certificate_authority_arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  domain_name : string prop;
  domain_validation_options : domain_validation_options list prop;
  early_renewal_duration : string prop;
  id : string prop;
  key_algorithm : string prop;
  not_after : string prop;
  not_before : string prop;
  pending_renewal : bool prop;
  private_key : string prop;
  renewal_eligibility : string prop;
  renewal_summary : renewal_summary list prop;
  status : string prop;
  subject_alternative_names : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  validation_emails : string list prop;
  validation_method : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?options:options list ->
  validation_option:validation_option list ->
  string ->
  t

val make :
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
  ?options:options list ->
  validation_option:validation_option list ->
  string ->
  t Tf_core.resource
