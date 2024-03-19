(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_identity_pool_provider_principal_tag = {
  id : string prop option; [@option]  (** id *)
  identity_pool_id : string prop;  (** identity_pool_id *)
  identity_provider_name : string prop;
      (** identity_provider_name *)
  principal_tags : (string * string prop) list option; [@option]
      (** principal_tags *)
  use_defaults : bool prop option; [@option]  (** use_defaults *)
}
[@@deriving yojson_of]
(** aws_cognito_identity_pool_provider_principal_tag *)

let aws_cognito_identity_pool_provider_principal_tag ?id
    ?principal_tags ?use_defaults ~identity_pool_id
    ~identity_provider_name () :
    aws_cognito_identity_pool_provider_principal_tag =
  {
    id;
    identity_pool_id;
    identity_provider_name;
    principal_tags;
    use_defaults;
  }

type t = {
  id : string prop;
  identity_pool_id : string prop;
  identity_provider_name : string prop;
  principal_tags : (string * string) list prop;
  use_defaults : bool prop;
}

let register ?tf_module ?id ?principal_tags ?use_defaults
    ~identity_pool_id ~identity_provider_name __resource_id =
  let __resource_type =
    "aws_cognito_identity_pool_provider_principal_tag"
  in
  let __resource =
    aws_cognito_identity_pool_provider_principal_tag ?id
      ?principal_tags ?use_defaults ~identity_pool_id
      ~identity_provider_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_identity_pool_provider_principal_tag
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       identity_pool_id =
         Prop.computed __resource_type __resource_id
           "identity_pool_id";
       identity_provider_name =
         Prop.computed __resource_type __resource_id
           "identity_provider_name";
       principal_tags =
         Prop.computed __resource_type __resource_id "principal_tags";
       use_defaults =
         Prop.computed __resource_type __resource_id "use_defaults";
     }
      : t)
  in
  __resource_attributes
