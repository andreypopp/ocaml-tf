(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acm_certificate__options = {
  certificate_transparency_logging_preference : string prop option;
      [@option]
      (** certificate_transparency_logging_preference *)
}
[@@deriving yojson_of]
(** aws_acm_certificate__options *)

type aws_acm_certificate__validation_option = {
  domain_name : string prop;  (** domain_name *)
  validation_domain : string prop;  (** validation_domain *)
}
[@@deriving yojson_of]
(** aws_acm_certificate__validation_option *)

type aws_acm_certificate__domain_validation_options = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}
[@@deriving yojson_of]

type aws_acm_certificate__renewal_summary = {
  renewal_status : string prop;  (** renewal_status *)
  renewal_status_reason : string prop;  (** renewal_status_reason *)
  updated_at : string prop;  (** updated_at *)
}
[@@deriving yojson_of]

type aws_acm_certificate = {
  certificate_authority_arn : string prop option; [@option]
      (** certificate_authority_arn *)
  certificate_body : string prop option; [@option]
      (** certificate_body *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  domain_name : string prop option; [@option]  (** domain_name *)
  early_renewal_duration : string prop option; [@option]
      (** early_renewal_duration *)
  id : string prop option; [@option]  (** id *)
  key_algorithm : string prop option; [@option]  (** key_algorithm *)
  private_key : string prop option; [@option]  (** private_key *)
  subject_alternative_names : string prop list option; [@option]
      (** subject_alternative_names *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  validation_method : string prop option; [@option]
      (** validation_method *)
  options : aws_acm_certificate__options list;
  validation_option : aws_acm_certificate__validation_option list;
}
[@@deriving yojson_of]
(** aws_acm_certificate *)

type t = {
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

let aws_acm_certificate ?certificate_authority_arn ?certificate_body
    ?certificate_chain ?domain_name ?early_renewal_duration ?id
    ?key_algorithm ?private_key ?subject_alternative_names ?tags
    ?tags_all ?validation_method ~options ~validation_option
    __resource_id =
  let __resource_type = "aws_acm_certificate" in
  let __resource =
    ({
       certificate_authority_arn;
       certificate_body;
       certificate_chain;
       domain_name;
       early_renewal_duration;
       id;
       key_algorithm;
       private_key;
       subject_alternative_names;
       tags;
       tags_all;
       validation_method;
       options;
       validation_option;
     }
      : aws_acm_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acm_certificate __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       certificate_authority_arn =
         Prop.computed __resource_type __resource_id
           "certificate_authority_arn";
       certificate_body =
         Prop.computed __resource_type __resource_id
           "certificate_body";
       certificate_chain =
         Prop.computed __resource_type __resource_id
           "certificate_chain";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       domain_validation_options =
         Prop.computed __resource_type __resource_id
           "domain_validation_options";
       early_renewal_duration =
         Prop.computed __resource_type __resource_id
           "early_renewal_duration";
       id = Prop.computed __resource_type __resource_id "id";
       key_algorithm =
         Prop.computed __resource_type __resource_id "key_algorithm";
       not_after =
         Prop.computed __resource_type __resource_id "not_after";
       not_before =
         Prop.computed __resource_type __resource_id "not_before";
       pending_renewal =
         Prop.computed __resource_type __resource_id
           "pending_renewal";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       renewal_eligibility =
         Prop.computed __resource_type __resource_id
           "renewal_eligibility";
       renewal_summary =
         Prop.computed __resource_type __resource_id
           "renewal_summary";
       status = Prop.computed __resource_type __resource_id "status";
       subject_alternative_names =
         Prop.computed __resource_type __resource_id
           "subject_alternative_names";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       validation_emails =
         Prop.computed __resource_type __resource_id
           "validation_emails";
       validation_method =
         Prop.computed __resource_type __resource_id
           "validation_method";
     }
      : t)
  in
  __resource_attributes
