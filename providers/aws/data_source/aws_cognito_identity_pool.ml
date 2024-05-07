(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cognito_identity_providers = {
  client_id : string prop;
  provider_name : string prop;
  server_side_token_check : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_server_side_token_check
         in
         ("server_side_token_check", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_name in
         ("provider_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : cognito_identity_providers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cognito_identity_providers

[@@@deriving.end]

type aws_cognito_identity_pool = {
  id : string prop option; [@option]
  identity_pool_name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_identity_pool) -> ()

let yojson_of_aws_cognito_identity_pool =
  (function
   | {
       id = v_id;
       identity_pool_name = v_identity_pool_name;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : aws_cognito_identity_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_identity_pool

[@@@deriving.end]

let aws_cognito_identity_pool ?id ?tags ~identity_pool_name () :
    aws_cognito_identity_pool =
  { id; identity_pool_name; tags }

type t = {
  tf_name : string;
  allow_classic_flow : bool prop;
  allow_unauthenticated_identities : bool prop;
  arn : string prop;
  cognito_identity_providers : cognito_identity_providers list prop;
  developer_provider_name : string prop;
  id : string prop;
  identity_pool_name : string prop;
  openid_connect_provider_arns : string list prop;
  saml_provider_arns : string list prop;
  supported_login_providers : (string * string) list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~identity_pool_name __id =
  let __type = "aws_cognito_identity_pool" in
  let __attrs =
    ({
       tf_name = __id;
       allow_classic_flow =
         Prop.computed __type __id "allow_classic_flow";
       allow_unauthenticated_identities =
         Prop.computed __type __id "allow_unauthenticated_identities";
       arn = Prop.computed __type __id "arn";
       cognito_identity_providers =
         Prop.computed __type __id "cognito_identity_providers";
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_identity_pool
        (aws_cognito_identity_pool ?id ?tags ~identity_pool_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~identity_pool_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~identity_pool_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
