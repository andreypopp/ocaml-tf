(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration__oidc_jwt_configuration = {
  claim_attribute_path : string;  (** claim_attribute_path *)
  identity_store_attribute_path : string;
      (** identity_store_attribute_path *)
  issuer_url : string;  (** issuer_url *)
  jwks_retrieval_option : string;  (** jwks_retrieval_option *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration__oidc_jwt_configuration *)

type aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration = {
  oidc_jwt_configuration :
    aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration__oidc_jwt_configuration
    list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration *)

type aws_ssoadmin_trusted_token_issuer = {
  client_token : string option; [@option]  (** client_token *)
  instance_arn : string;  (** instance_arn *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  trusted_token_issuer_type : string;
      (** trusted_token_issuer_type *)
  trusted_token_issuer_configuration :
    aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration
    list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_trusted_token_issuer *)

let aws_ssoadmin_trusted_token_issuer ?client_token ?tags
    ~instance_arn ~name ~trusted_token_issuer_type
    ~trusted_token_issuer_configuration __resource_id =
  let __resource_type = "aws_ssoadmin_trusted_token_issuer" in
  let __resource =
    {
      client_token;
      instance_arn;
      name;
      tags;
      trusted_token_issuer_type;
      trusted_token_issuer_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_trusted_token_issuer __resource);
  ()
