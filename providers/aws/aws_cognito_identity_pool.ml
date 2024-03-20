(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cognito_identity_providers = {
  client_id : string prop option; [@option]  (** client_id *)
  provider_name : string prop option; [@option]  (** provider_name *)
  server_side_token_check : bool prop option; [@option]
      (** server_side_token_check *)
}
[@@deriving yojson_of]
(** cognito_identity_providers *)

type aws_cognito_identity_pool = {
  allow_classic_flow : bool prop option; [@option]
      (** allow_classic_flow *)
  allow_unauthenticated_identities : bool prop option; [@option]
      (** allow_unauthenticated_identities *)
  developer_provider_name : string prop option; [@option]
      (** developer_provider_name *)
  id : string prop option; [@option]  (** id *)
  identity_pool_name : string prop;  (** identity_pool_name *)
  openid_connect_provider_arns : string prop list option; [@option]
      (** openid_connect_provider_arns *)
  saml_provider_arns : string prop list option; [@option]
      (** saml_provider_arns *)
  supported_login_providers : (string * string prop) list option;
      [@option]
      (** supported_login_providers *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  cognito_identity_providers : cognito_identity_providers list;
}
[@@deriving yojson_of]
(** aws_cognito_identity_pool *)

let cognito_identity_providers ?client_id ?provider_name
    ?server_side_token_check () : cognito_identity_providers =
  { client_id; provider_name; server_side_token_check }

let aws_cognito_identity_pool ?allow_classic_flow
    ?allow_unauthenticated_identities ?developer_provider_name ?id
    ?openid_connect_provider_arns ?saml_provider_arns
    ?supported_login_providers ?tags ?tags_all ~identity_pool_name
    ~cognito_identity_providers () : aws_cognito_identity_pool =
  {
    allow_classic_flow;
    allow_unauthenticated_identities;
    developer_provider_name;
    id;
    identity_pool_name;
    openid_connect_provider_arns;
    saml_provider_arns;
    supported_login_providers;
    tags;
    tags_all;
    cognito_identity_providers;
  }

type t = {
  allow_classic_flow : bool prop;
  allow_unauthenticated_identities : bool prop;
  arn : string prop;
  developer_provider_name : string prop;
  id : string prop;
  identity_pool_name : string prop;
  openid_connect_provider_arns : string list prop;
  saml_provider_arns : string list prop;
  supported_login_providers : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?allow_classic_flow ?allow_unauthenticated_identities
    ?developer_provider_name ?id ?openid_connect_provider_arns
    ?saml_provider_arns ?supported_login_providers ?tags ?tags_all
    ~identity_pool_name ~cognito_identity_providers __id =
  let __type = "aws_cognito_identity_pool" in
  let __attrs =
    ({
       allow_classic_flow =
         Prop.computed __type __id "allow_classic_flow";
       allow_unauthenticated_identities =
         Prop.computed __type __id "allow_unauthenticated_identities";
       arn = Prop.computed __type __id "arn";
       developer_provider_name =
         Prop.computed __type __id "developer_provider_name";
       id = Prop.computed __type __id "id";
       identity_pool_name =
         Prop.computed __type __id "identity_pool_name";
       openid_connect_provider_arns =
         Prop.computed __type __id "openid_connect_provider_arns";
       saml_provider_arns =
         Prop.computed __type __id "saml_provider_arns";
       supported_login_providers =
         Prop.computed __type __id "supported_login_providers";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_identity_pool
        (aws_cognito_identity_pool ?allow_classic_flow
           ?allow_unauthenticated_identities ?developer_provider_name
           ?id ?openid_connect_provider_arns ?saml_provider_arns
           ?supported_login_providers ?tags ?tags_all
           ~identity_pool_name ~cognito_identity_providers ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_classic_flow
    ?allow_unauthenticated_identities ?developer_provider_name ?id
    ?openid_connect_provider_arns ?saml_provider_arns
    ?supported_login_providers ?tags ?tags_all ~identity_pool_name
    ~cognito_identity_providers __id =
  let (r : _ Tf_core.resource) =
    make ?allow_classic_flow ?allow_unauthenticated_identities
      ?developer_provider_name ?id ?openid_connect_provider_arns
      ?saml_provider_arns ?supported_login_providers ?tags ?tags_all
      ~identity_pool_name ~cognito_identity_providers __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
