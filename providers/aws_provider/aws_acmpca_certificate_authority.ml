(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acmpca_certificate_authority__certificate_authority_configuration__subject = {
  common_name : string prop option; [@option]  (** common_name *)
  country : string prop option; [@option]  (** country *)
  distinguished_name_qualifier : string prop option; [@option]
      (** distinguished_name_qualifier *)
  generation_qualifier : string prop option; [@option]
      (** generation_qualifier *)
  given_name : string prop option; [@option]  (** given_name *)
  initials : string prop option; [@option]  (** initials *)
  locality : string prop option; [@option]  (** locality *)
  organization : string prop option; [@option]  (** organization *)
  organizational_unit : string prop option; [@option]
      (** organizational_unit *)
  pseudonym : string prop option; [@option]  (** pseudonym *)
  state : string prop option; [@option]  (** state *)
  surname : string prop option; [@option]  (** surname *)
  title : string prop option; [@option]  (** title *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__certificate_authority_configuration__subject *)

type aws_acmpca_certificate_authority__certificate_authority_configuration = {
  key_algorithm : string prop;  (** key_algorithm *)
  signing_algorithm : string prop;  (** signing_algorithm *)
  subject :
    aws_acmpca_certificate_authority__certificate_authority_configuration__subject
    list;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__certificate_authority_configuration *)

type aws_acmpca_certificate_authority__revocation_configuration__crl_configuration = {
  custom_cname : string prop option; [@option]  (** custom_cname *)
  enabled : bool prop option; [@option]  (** enabled *)
  expiration_in_days : float prop option; [@option]
      (** expiration_in_days *)
  s3_bucket_name : string prop option; [@option]
      (** s3_bucket_name *)
  s3_object_acl : string prop option; [@option]  (** s3_object_acl *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__revocation_configuration__crl_configuration *)

type aws_acmpca_certificate_authority__revocation_configuration__ocsp_configuration = {
  enabled : bool prop;  (** enabled *)
  ocsp_custom_cname : string prop option; [@option]
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
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority__timeouts *)

type aws_acmpca_certificate_authority = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  key_storage_security_standard : string prop option; [@option]
      (** key_storage_security_standard *)
  permanent_deletion_time_in_days : float prop option; [@option]
      (** permanent_deletion_time_in_days *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  usage_mode : string prop option; [@option]  (** usage_mode *)
  certificate_authority_configuration :
    aws_acmpca_certificate_authority__certificate_authority_configuration
    list;
  revocation_configuration :
    aws_acmpca_certificate_authority__revocation_configuration list;
  timeouts : aws_acmpca_certificate_authority__timeouts option;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority *)

type t = {
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  certificate_signing_request : string prop;
  enabled : bool prop;
  id : string prop;
  key_storage_security_standard : string prop;
  not_after : string prop;
  not_before : string prop;
  permanent_deletion_time_in_days : float prop;
  serial : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  usage_mode : string prop;
}

let aws_acmpca_certificate_authority ?enabled ?id
    ?key_storage_security_standard ?permanent_deletion_time_in_days
    ?tags ?tags_all ?type_ ?usage_mode ?timeouts
    ~certificate_authority_configuration ~revocation_configuration
    __resource_id =
  let __resource_type = "aws_acmpca_certificate_authority" in
  let __resource =
    ({
       enabled;
       id;
       key_storage_security_standard;
       permanent_deletion_time_in_days;
       tags;
       tags_all;
       type_;
       usage_mode;
       certificate_authority_configuration;
       revocation_configuration;
       timeouts;
     }
      : aws_acmpca_certificate_authority)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acmpca_certificate_authority __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       certificate_chain =
         Prop.computed __resource_type __resource_id
           "certificate_chain";
       certificate_signing_request =
         Prop.computed __resource_type __resource_id
           "certificate_signing_request";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       key_storage_security_standard =
         Prop.computed __resource_type __resource_id
           "key_storage_security_standard";
       not_after =
         Prop.computed __resource_type __resource_id "not_after";
       not_before =
         Prop.computed __resource_type __resource_id "not_before";
       permanent_deletion_time_in_days =
         Prop.computed __resource_type __resource_id
           "permanent_deletion_time_in_days";
       serial = Prop.computed __resource_type __resource_id "serial";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       usage_mode =
         Prop.computed __resource_type __resource_id "usage_mode";
     }
      : t)
  in
  __resource_attributes
