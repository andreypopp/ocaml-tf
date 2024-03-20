(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?principal_tags ?use_defaults ~identity_pool_id
    ~identity_provider_name __id =
  let __type = "aws_cognito_identity_pool_provider_principal_tag" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       identity_pool_id =
         Prop.computed __type __id "identity_pool_id";
       identity_provider_name =
         Prop.computed __type __id "identity_provider_name";
       principal_tags = Prop.computed __type __id "principal_tags";
       use_defaults = Prop.computed __type __id "use_defaults";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_identity_pool_provider_principal_tag
        (aws_cognito_identity_pool_provider_principal_tag ?id
           ?principal_tags ?use_defaults ~identity_pool_id
           ~identity_provider_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?principal_tags ?use_defaults
    ~identity_pool_id ~identity_provider_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?principal_tags ?use_defaults ~identity_pool_id
      ~identity_provider_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
