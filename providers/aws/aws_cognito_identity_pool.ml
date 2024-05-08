(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cognito_identity_providers = {
  client_id : string prop option; [@option]
  provider_name : string prop option; [@option]
  server_side_token_check : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cognito_identity_providers) -> ()

let yojson_of_cognito_identity_providers =
  (function
   | {
       client_id = v_client_id;
       provider_name = v_provider_name;
       server_side_token_check = v_server_side_token_check;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_server_side_token_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "server_side_token_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cognito_identity_providers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cognito_identity_providers

[@@@deriving.end]

type aws_cognito_identity_pool = {
  allow_classic_flow : bool prop option; [@option]
  allow_unauthenticated_identities : bool prop option; [@option]
  developer_provider_name : string prop option; [@option]
  id : string prop option; [@option]
  identity_pool_name : string prop;
  openid_connect_provider_arns : string prop list option; [@option]
  saml_provider_arns : string prop list option; [@option]
  supported_login_providers : (string * string prop) list option;
      [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  cognito_identity_providers : cognito_identity_providers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_identity_pool) -> ()

let yojson_of_aws_cognito_identity_pool =
  (function
   | {
       allow_classic_flow = v_allow_classic_flow;
       allow_unauthenticated_identities =
         v_allow_unauthenticated_identities;
       developer_provider_name = v_developer_provider_name;
       id = v_id;
       identity_pool_name = v_identity_pool_name;
       openid_connect_provider_arns = v_openid_connect_provider_arns;
       saml_provider_arns = v_saml_provider_arns;
       supported_login_providers = v_supported_login_providers;
       tags = v_tags;
       tags_all = v_tags_all;
       cognito_identity_providers = v_cognito_identity_providers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cognito_identity_providers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cognito_identity_providers)
               v_cognito_identity_providers
           in
           let bnd = "cognito_identity_providers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supported_login_providers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "supported_login_providers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_saml_provider_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "saml_provider_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_openid_connect_provider_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "openid_connect_provider_arns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_pool_name
         in
         ("identity_pool_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_developer_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "developer_provider_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_unauthenticated_identities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_unauthenticated_identities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_classic_flow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_classic_flow", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_identity_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_identity_pool

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
