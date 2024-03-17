(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_identity_pool_provider_principal_tag = {
  identity_pool_id : string;  (** identity_pool_id *)
  identity_provider_name : string;  (** identity_provider_name *)
  principal_tags : (string * string) list option; [@option]
      (** principal_tags *)
  use_defaults : bool option; [@option]  (** use_defaults *)
}
[@@deriving yojson_of]
(** aws_cognito_identity_pool_provider_principal_tag *)

let aws_cognito_identity_pool_provider_principal_tag ?principal_tags
    ?use_defaults ~identity_pool_id ~identity_provider_name
    __resource_id =
  let __resource_type =
    "aws_cognito_identity_pool_provider_principal_tag"
  in
  let __resource =
    {
      identity_pool_id;
      identity_provider_name;
      principal_tags;
      use_defaults;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_identity_pool_provider_principal_tag
       __resource);
  ()
