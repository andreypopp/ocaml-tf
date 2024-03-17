(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_identity_provider = {
  idp_identifiers : string list option; [@option]
      (** idp_identifiers *)
  provider_details : (string * string) list;  (** provider_details *)
  provider_name : string;  (** provider_name *)
  provider_type : string;  (** provider_type *)
  user_pool_id : string;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_identity_provider *)

let aws_cognito_identity_provider ?idp_identifiers ~provider_details
    ~provider_name ~provider_type ~user_pool_id __resource_id =
  let __resource_type = "aws_cognito_identity_provider" in
  let __resource =
    {
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
