(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration__oidc_jwt_configuration = {
  claim_attribute_path : string prop;  (** claim_attribute_path *)
  identity_store_attribute_path : string prop;
      (** identity_store_attribute_path *)
  issuer_url : string prop;  (** issuer_url *)
  jwks_retrieval_option : string prop;  (** jwks_retrieval_option *)
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
  client_token : string prop option; [@option]  (** client_token *)
  instance_arn : string prop;  (** instance_arn *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  trusted_token_issuer_type : string prop;
      (** trusted_token_issuer_type *)
  trusted_token_issuer_configuration :
    aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration
    list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_trusted_token_issuer *)

type t = {
  arn : string prop;
  client_token : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trusted_token_issuer_type : string prop;
}

let aws_ssoadmin_trusted_token_issuer ?client_token ?tags
    ~instance_arn ~name ~trusted_token_issuer_type
    ~trusted_token_issuer_configuration __resource_id =
  let __resource_type = "aws_ssoadmin_trusted_token_issuer" in
  let __resource =
    ({
       client_token;
       instance_arn;
       name;
       tags;
       trusted_token_issuer_type;
       trusted_token_issuer_configuration;
     }
      : aws_ssoadmin_trusted_token_issuer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_trusted_token_issuer __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       client_token =
         Prop.computed __resource_type __resource_id "client_token";
       id = Prop.computed __resource_type __resource_id "id";
       instance_arn =
         Prop.computed __resource_type __resource_id "instance_arn";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       trusted_token_issuer_type =
         Prop.computed __resource_type __resource_id
           "trusted_token_issuer_type";
     }
      : t)
  in
  __resource_attributes
