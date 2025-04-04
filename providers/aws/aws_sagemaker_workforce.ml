(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cognito_config = {
  client_id : string prop;
  user_pool : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cognito_config) -> ()

let yojson_of_cognito_config =
  (function
   | { client_id = v_client_id; user_pool = v_user_pool } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool in
         ("user_pool", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : cognito_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cognito_config

[@@@deriving.end]

type oidc_config = {
  authentication_request_extra_params :
    string prop Tf_core.assoc option;
      [@option]
  authorization_endpoint : string prop;
  client_id : string prop;
  client_secret : string prop;
  issuer : string prop;
  jwks_uri : string prop;
  logout_endpoint : string prop;
  scope : string prop option; [@option]
  token_endpoint : string prop;
  user_info_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc_config) -> ()

let yojson_of_oidc_config =
  (function
   | {
       authentication_request_extra_params =
         v_authentication_request_extra_params;
       authorization_endpoint = v_authorization_endpoint;
       client_id = v_client_id;
       client_secret = v_client_secret;
       issuer = v_issuer;
       jwks_uri = v_jwks_uri;
       logout_endpoint = v_logout_endpoint;
       scope = v_scope;
       token_endpoint = v_token_endpoint;
       user_info_endpoint = v_user_info_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_info_endpoint
         in
         ("user_info_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_token_endpoint
         in
         ("token_endpoint", arg) :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logout_endpoint
         in
         ("logout_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_jwks_uri in
         ("jwks_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorization_endpoint
         in
         ("authorization_endpoint", arg) :: bnds
       in
       let bnds =
         match v_authentication_request_extra_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "authentication_request_extra_params", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : oidc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oidc_config

[@@@deriving.end]

type source_ip_config = {
  cidrs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_ip_config) -> ()

let yojson_of_source_ip_config =
  (function
   | { cidrs = v_cidrs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cidrs then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cidrs
           in
           let bnd = "cidrs", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source_ip_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_ip_config

[@@@deriving.end]

type workforce_vpc_config = {
  security_group_ids : string prop list option; [@option]
  subnets : string prop list option; [@option]
  vpc_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workforce_vpc_config) -> ()

let yojson_of_workforce_vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnets = v_subnets;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workforce_vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workforce_vpc_config

[@@@deriving.end]

type aws_sagemaker_workforce = {
  id : string prop option; [@option]
  workforce_name : string prop;
  cognito_config : cognito_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oidc_config : oidc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_ip_config : source_ip_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workforce_vpc_config : workforce_vpc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_workforce) -> ()

let yojson_of_aws_sagemaker_workforce =
  (function
   | {
       id = v_id;
       workforce_name = v_workforce_name;
       cognito_config = v_cognito_config;
       oidc_config = v_oidc_config;
       source_ip_config = v_source_ip_config;
       workforce_vpc_config = v_workforce_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workforce_vpc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_workforce_vpc_config)
               v_workforce_vpc_config
           in
           let bnd = "workforce_vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_ip_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_ip_config)
               v_source_ip_config
           in
           let bnd = "source_ip_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oidc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_oidc_config) v_oidc_config
           in
           let bnd = "oidc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cognito_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cognito_config)
               v_cognito_config
           in
           let bnd = "cognito_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workforce_name
         in
         ("workforce_name", arg) :: bnds
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
    : aws_sagemaker_workforce -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_workforce

[@@@deriving.end]

let cognito_config ~client_id ~user_pool () : cognito_config =
  { client_id; user_pool }

let oidc_config ?authentication_request_extra_params ?scope
    ~authorization_endpoint ~client_id ~client_secret ~issuer
    ~jwks_uri ~logout_endpoint ~token_endpoint ~user_info_endpoint ()
    : oidc_config =
  {
    authentication_request_extra_params;
    authorization_endpoint;
    client_id;
    client_secret;
    issuer;
    jwks_uri;
    logout_endpoint;
    scope;
    token_endpoint;
    user_info_endpoint;
  }

let source_ip_config ~cidrs () : source_ip_config = { cidrs }

let workforce_vpc_config ?security_group_ids ?subnets ?vpc_id () :
    workforce_vpc_config =
  { security_group_ids; subnets; vpc_id }

let aws_sagemaker_workforce ?id ?(cognito_config = [])
    ?(oidc_config = []) ?(source_ip_config = [])
    ?(workforce_vpc_config = []) ~workforce_name () :
    aws_sagemaker_workforce =
  {
    id;
    workforce_name;
    cognito_config;
    oidc_config;
    source_ip_config;
    workforce_vpc_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  subdomain : string prop;
  workforce_name : string prop;
}

let make ?id ?(cognito_config = []) ?(oidc_config = [])
    ?(source_ip_config = []) ?(workforce_vpc_config = [])
    ~workforce_name __id =
  let __type = "aws_sagemaker_workforce" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       subdomain = Prop.computed __type __id "subdomain";
       workforce_name = Prop.computed __type __id "workforce_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_workforce
        (aws_sagemaker_workforce ?id ~cognito_config ~oidc_config
           ~source_ip_config ~workforce_vpc_config ~workforce_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(cognito_config = [])
    ?(oidc_config = []) ?(source_ip_config = [])
    ?(workforce_vpc_config = []) ~workforce_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cognito_config ~oidc_config ~source_ip_config
      ~workforce_vpc_config ~workforce_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
