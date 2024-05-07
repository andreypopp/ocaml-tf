(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_api_management_identity_provider_aadb2c = {
  allowed_tenant : string prop;
  api_management_name : string prop;
  authority : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop option; [@option]
  password_reset_policy : string prop option; [@option]
  profile_editing_policy : string prop option; [@option]
  resource_group_name : string prop;
  signin_policy : string prop;
  signin_tenant : string prop;
  signup_policy : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_api_management_identity_provider_aadb2c) -> ()

let yojson_of_azurerm_api_management_identity_provider_aadb2c =
  (function
   | {
       allowed_tenant = v_allowed_tenant;
       api_management_name = v_api_management_name;
       authority = v_authority;
       client_id = v_client_id;
       client_secret = v_client_secret;
       id = v_id;
       password_reset_policy = v_password_reset_policy;
       profile_editing_policy = v_profile_editing_policy;
       resource_group_name = v_resource_group_name;
       signin_policy = v_signin_policy;
       signin_tenant = v_signin_tenant;
       signup_policy = v_signup_policy;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_signup_policy in
         ("signup_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_signin_tenant in
         ("signin_tenant", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_signin_policy in
         ("signin_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_profile_editing_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile_editing_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_reset_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_reset_policy", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_authority in
         ("authority", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allowed_tenant
         in
         ("allowed_tenant", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_identity_provider_aadb2c ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_identity_provider_aadb2c

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_identity_provider_aadb2c ?id
    ?password_reset_policy ?profile_editing_policy ?timeouts
    ~allowed_tenant ~api_management_name ~authority ~client_id
    ~client_secret ~resource_group_name ~signin_policy ~signin_tenant
    ~signup_policy () :
    azurerm_api_management_identity_provider_aadb2c =
  {
    allowed_tenant;
    api_management_name;
    authority;
    client_id;
    client_secret;
    id;
    password_reset_policy;
    profile_editing_policy;
    resource_group_name;
    signin_policy;
    signin_tenant;
    signup_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  allowed_tenant : string prop;
  api_management_name : string prop;
  authority : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  password_reset_policy : string prop;
  profile_editing_policy : string prop;
  resource_group_name : string prop;
  signin_policy : string prop;
  signin_tenant : string prop;
  signup_policy : string prop;
}

let make ?id ?password_reset_policy ?profile_editing_policy ?timeouts
    ~allowed_tenant ~api_management_name ~authority ~client_id
    ~client_secret ~resource_group_name ~signin_policy ~signin_tenant
    ~signup_policy __id =
  let __type = "azurerm_api_management_identity_provider_aadb2c" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_tenant = Prop.computed __type __id "allowed_tenant";
       api_management_name =
         Prop.computed __type __id "api_management_name";
       authority = Prop.computed __type __id "authority";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       id = Prop.computed __type __id "id";
       password_reset_policy =
         Prop.computed __type __id "password_reset_policy";
       profile_editing_policy =
         Prop.computed __type __id "profile_editing_policy";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       signin_policy = Prop.computed __type __id "signin_policy";
       signin_tenant = Prop.computed __type __id "signin_tenant";
       signup_policy = Prop.computed __type __id "signup_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_identity_provider_aadb2c
        (azurerm_api_management_identity_provider_aadb2c ?id
           ?password_reset_policy ?profile_editing_policy ?timeouts
           ~allowed_tenant ~api_management_name ~authority ~client_id
           ~client_secret ~resource_group_name ~signin_policy
           ~signin_tenant ~signup_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?password_reset_policy
    ?profile_editing_policy ?timeouts ~allowed_tenant
    ~api_management_name ~authority ~client_id ~client_secret
    ~resource_group_name ~signin_policy ~signin_tenant ~signup_policy
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?password_reset_policy ?profile_editing_policy ?timeouts
      ~allowed_tenant ~api_management_name ~authority ~client_id
      ~client_secret ~resource_group_name ~signin_policy
      ~signin_tenant ~signup_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
