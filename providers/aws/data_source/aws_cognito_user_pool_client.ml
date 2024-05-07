(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type analytics_configuration = {
  application_arn : string prop;
  application_id : string prop;
  external_id : string prop;
  role_arn : string prop;
  user_data_shared : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : analytics_configuration) -> ()

let yojson_of_analytics_configuration =
  (function
   | {
       application_arn = v_application_arn;
       application_id = v_application_id;
       external_id = v_external_id;
       role_arn = v_role_arn;
       user_data_shared = v_user_data_shared;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_user_data_shared
         in
         ("user_data_shared", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_external_id in
         ("external_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_arn
         in
         ("application_arn", arg) :: bnds
       in
       `Assoc bnds
    : analytics_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_analytics_configuration

[@@@deriving.end]

type token_validity_units = {
  access_token : string prop;
  id_token : string prop;
  refresh_token : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : token_validity_units) -> ()

let yojson_of_token_validity_units =
  (function
   | {
       access_token = v_access_token;
       id_token = v_id_token;
       refresh_token = v_refresh_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_refresh_token in
         ("refresh_token", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id_token in
         ("id_token", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_token in
         ("access_token", arg) :: bnds
       in
       `Assoc bnds
    : token_validity_units -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_token_validity_units

[@@@deriving.end]

type aws_cognito_user_pool_client = {
  client_id : string prop;
  id : string prop option; [@option]
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_pool_client) -> ()

let yojson_of_aws_cognito_user_pool_client =
  (function
   | {
       client_id = v_client_id;
       id = v_id;
       user_pool_id = v_user_pool_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_pool_client ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_pool_client

[@@@deriving.end]

let aws_cognito_user_pool_client ?id ~client_id ~user_pool_id () :
    aws_cognito_user_pool_client =
  { client_id; id; user_pool_id }

type t = {
  tf_name : string;
  access_token_validity : float prop;
  allowed_oauth_flows : string list prop;
  allowed_oauth_flows_user_pool_client : bool prop;
  allowed_oauth_scopes : string list prop;
  analytics_configuration : analytics_configuration list prop;
  callback_urls : string list prop;
  client_id : string prop;
  client_secret : string prop;
  default_redirect_uri : string prop;
  enable_propagate_additional_user_context_data : bool prop;
  enable_token_revocation : bool prop;
  explicit_auth_flows : string list prop;
  generate_secret : bool prop;
  id : string prop;
  id_token_validity : float prop;
  logout_urls : string list prop;
  name : string prop;
  prevent_user_existence_errors : string prop;
  read_attributes : string list prop;
  refresh_token_validity : float prop;
  supported_identity_providers : string list prop;
  token_validity_units : token_validity_units list prop;
  user_pool_id : string prop;
  write_attributes : string list prop;
}

let make ?id ~client_id ~user_pool_id __id =
  let __type = "aws_cognito_user_pool_client" in
  let __attrs =
    ({
       tf_name = __id;
       access_token_validity =
         Prop.computed __type __id "access_token_validity";
       allowed_oauth_flows =
         Prop.computed __type __id "allowed_oauth_flows";
       allowed_oauth_flows_user_pool_client =
         Prop.computed __type __id
           "allowed_oauth_flows_user_pool_client";
       allowed_oauth_scopes =
         Prop.computed __type __id "allowed_oauth_scopes";
       analytics_configuration =
         Prop.computed __type __id "analytics_configuration";
       callback_urls = Prop.computed __type __id "callback_urls";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       default_redirect_uri =
         Prop.computed __type __id "default_redirect_uri";
       enable_propagate_additional_user_context_data =
         Prop.computed __type __id
           "enable_propagate_additional_user_context_data";
       enable_token_revocation =
         Prop.computed __type __id "enable_token_revocation";
       explicit_auth_flows =
         Prop.computed __type __id "explicit_auth_flows";
       generate_secret = Prop.computed __type __id "generate_secret";
       id = Prop.computed __type __id "id";
       id_token_validity =
         Prop.computed __type __id "id_token_validity";
       logout_urls = Prop.computed __type __id "logout_urls";
       name = Prop.computed __type __id "name";
       prevent_user_existence_errors =
         Prop.computed __type __id "prevent_user_existence_errors";
       read_attributes = Prop.computed __type __id "read_attributes";
       refresh_token_validity =
         Prop.computed __type __id "refresh_token_validity";
       supported_identity_providers =
         Prop.computed __type __id "supported_identity_providers";
       token_validity_units =
         Prop.computed __type __id "token_validity_units";
       user_pool_id = Prop.computed __type __id "user_pool_id";
       write_attributes =
         Prop.computed __type __id "write_attributes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_pool_client
        (aws_cognito_user_pool_client ?id ~client_id ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~client_id ~user_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~client_id ~user_pool_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
