(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ~user_pool_id () : aws_cognito_identity_provider =
  {
    attribute_mapping;
    id;
    idp_identifiers;
    provider_details;
    provider_name;
    provider_type;
    user_pool_id;
  }

type t = {
  attribute_mapping : (string * string) list prop;
  id : string prop;
  idp_identifiers : string list prop;
  provider_details : (string * string) list prop;
  provider_name : string prop;
  provider_type : string prop;
  user_pool_id : string prop;
}

let make ?attribute_mapping ?id ?idp_identifiers ~provider_details
    ~provider_name ~provider_type ~user_pool_id __id =
  let __type = "aws_cognito_identity_provider" in
  let __attrs =
    ({
       attribute_mapping =
         Prop.computed __type __id "attribute_mapping";
       id = Prop.computed __type __id "id";
       idp_identifiers = Prop.computed __type __id "idp_identifiers";
       provider_details =
         Prop.computed __type __id "provider_details";
       provider_name = Prop.computed __type __id "provider_name";
       provider_type = Prop.computed __type __id "provider_type";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_identity_provider
        (aws_cognito_identity_provider ?attribute_mapping ?id
           ?idp_identifiers ~provider_details ~provider_name
           ~provider_type ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?attribute_mapping ?id ?idp_identifiers
    ~provider_details ~provider_name ~provider_type ~user_pool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?attribute_mapping ?id ?idp_identifiers ~provider_details
      ~provider_name ~provider_type ~user_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
