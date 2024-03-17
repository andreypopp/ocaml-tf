(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_identity_provider = {
  attribute_mapping : (string * string prop) list option; [@option]
      (** attribute_mapping *)
  id : string prop option; [@option]  (** id *)
  idp_identifiers : string prop list option; [@option]
      (** idp_identifiers *)
  provider_details : (string * string prop) list;
      (** provider_details *)
  provider_name : string prop;  (** provider_name *)
  provider_type : string prop;  (** provider_type *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_identity_provider *)

let aws_cognito_identity_provider ?attribute_mapping ?id
    ?idp_identifiers ~provider_details ~provider_name ~provider_type
    ~user_pool_id __resource_id =
  let __resource_type = "aws_cognito_identity_provider" in
  let __resource =
    {
      attribute_mapping;
      id;
      idp_identifiers;
      provider_details;
      provider_name;
      provider_type;
      user_pool_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_identity_provider __resource);
  ()
