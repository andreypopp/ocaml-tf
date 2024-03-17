(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acm_certificate__options = {
  certificate_transparency_logging_preference : string option;
      [@option]
      (** certificate_transparency_logging_preference *)
}
[@@deriving yojson_of]
(** aws_acm_certificate__options *)

type aws_acm_certificate__validation_option = {
  domain_name : string;  (** domain_name *)
  validation_domain : string;  (** validation_domain *)
}
[@@deriving yojson_of]
(** aws_acm_certificate__validation_option *)

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

type aws_acm_certificate = {
  certificate_authority_arn : string option; [@option]
      (** certificate_authority_arn *)
  certificate_body : string option; [@option]
      (** certificate_body *)
  certificate_chain : string option; [@option]
      (** certificate_chain *)
  domain_name : string option; [@option]  (** domain_name *)
  early_renewal_duration : string option; [@option]
      (** early_renewal_duration *)
  id : string option; [@option]  (** id *)
  key_algorithm : string option; [@option]  (** key_algorithm *)
  private_key : string option; [@option]  (** private_key *)
  subject_alternative_names : string list option; [@option]
      (** subject_alternative_names *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  validation_method : string option; [@option]
      (** validation_method *)
  options : aws_acm_certificate__options list;
  validation_option : aws_acm_certificate__validation_option list;
}
[@@deriving yojson_of]
(** aws_acm_certificate *)

let aws_acm_certificate ?certificate_authority_arn ?certificate_body
    ?certificate_chain ?domain_name ?early_renewal_duration ?id
    ?key_algorithm ?private_key ?subject_alternative_names ?tags
    ?tags_all ?validation_method ~options ~validation_option
    __resource_id =
  let __resource_type = "aws_acm_certificate" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acm_certificate __resource);
  ()
