(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_acmpca_certificate_authority__certificate_authority_configuration__subject = {
  common_name : string option; [@option]  (** common_name *)
  country : string option; [@option]  (** country *)
  distinguished_name_qualifier : string option; [@option]
      (** distinguished_name_qualifier *)
  generation_qualifier : string option; [@option]
      (** generation_qualifier *)
  given_name : string option; [@option]  (** given_name *)
  initials : string option; [@option]  (** initials *)
  locality : string option; [@option]  (** locality *)
  organization : string option; [@option]  (** organization *)
  organizational_unit : string option; [@option]
      (** organizational_unit *)
  pseudonym : string option; [@option]  (** pseudonym *)
  state : string option; [@option]  (** state *)
  surname : string option; [@option]  (** surname *)
  title : string option; [@option]  (** title *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__certificate_authority_configuration__subject *)

type aws_acmpca_certificate_authority__certificate_authority_configuration = {
  key_algorithm : string;  (** key_algorithm *)
  signing_algorithm : string;  (** signing_algorithm *)
  subject :
    aws_acmpca_certificate_authority__certificate_authority_configuration__subject
    list;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__certificate_authority_configuration *)

type aws_acmpca_certificate_authority__revocation_configuration__crl_configuration = {
  custom_cname : string option; [@option]  (** custom_cname *)
  enabled : bool option; [@option]  (** enabled *)
  expiration_in_days : float option; [@option]
      (** expiration_in_days *)
  s3_bucket_name : string option; [@option]  (** s3_bucket_name *)
  s3_object_acl : string option; [@option]  (** s3_object_acl *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__revocation_configuration__crl_configuration *)

type aws_acmpca_certificate_authority__revocation_configuration__ocsp_configuration = {
  enabled : bool;  (** enabled *)
  ocsp_custom_cname : string option; [@option]
      (** ocsp_custom_cname *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__revocation_configuration__ocsp_configuration *)

type aws_acmpca_certificate_authority__revocation_configuration = {
  crl_configuration :
    aws_acmpca_certificate_authority__revocation_configuration__crl_configuration
    list;
  ocsp_configuration :
    aws_acmpca_certificate_authority__revocation_configuration__ocsp_configuration
    list;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__revocation_configuration *)

type aws_acmpca_certificate_authority__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__timeouts *)

type aws_acmpca_certificate_authority = {
  enabled : bool option; [@option]  (** enabled *)
  permanent_deletion_time_in_days : float option; [@option]
      (** permanent_deletion_time_in_days *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  certificate_authority_configuration :
    aws_acmpca_certificate_authority__certificate_authority_configuration
    list;
  revocation_configuration :
    aws_acmpca_certificate_authority__revocation_configuration list;
  timeouts : aws_acmpca_certificate_authority__timeouts option;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority *)

let aws_acmpca_certificate_authority ?enabled
    ?permanent_deletion_time_in_days ?tags ?type_ ?timeouts
    ~certificate_authority_configuration ~revocation_configuration
    __resource_id =
  let __resource_type = "aws_acmpca_certificate_authority" in
  let __resource =
    {
      enabled;
      permanent_deletion_time_in_days;
      tags;
      type_;
      certificate_authority_configuration;
      revocation_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acmpca_certificate_authority __resource);
  ()
