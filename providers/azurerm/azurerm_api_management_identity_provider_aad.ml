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

type azurerm_api_management_identity_provider_aad = {
  allowed_tenants : string prop list;
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  signin_tenant : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_identity_provider_aad) -> ()

let yojson_of_azurerm_api_management_identity_provider_aad =
  (function
   | {
       allowed_tenants = v_allowed_tenants;
       api_management_name = v_api_management_name;
       client_id = v_client_id;
       client_secret = v_client_secret;
       id = v_id;
       resource_group_name = v_resource_group_name;
       signin_tenant = v_signin_tenant;
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
         match v_signin_tenant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signin_tenant", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_tenants
         in
         ("allowed_tenants", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_identity_provider_aad ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_identity_provider_aad

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_identity_provider_aad ?id ?signin_tenant
    ?timeouts ~allowed_tenants ~api_management_name ~client_id
    ~client_secret ~resource_group_name () :
    azurerm_api_management_identity_provider_aad =
  {
    allowed_tenants;
    api_management_name;
    client_id;
    client_secret;
    id;
    resource_group_name;
    signin_tenant;
    timeouts;
  }

type t = {
  tf_name : string;
  allowed_tenants : string list prop;
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  resource_group_name : string prop;
  signin_tenant : string prop;
}

let make ?id ?signin_tenant ?timeouts ~allowed_tenants
    ~api_management_name ~client_id ~client_secret
    ~resource_group_name __id =
  let __type = "azurerm_api_management_identity_provider_aad" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_tenants = Prop.computed __type __id "allowed_tenants";
       api_management_name =
         Prop.computed __type __id "api_management_name";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       signin_tenant = Prop.computed __type __id "signin_tenant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_identity_provider_aad
        (azurerm_api_management_identity_provider_aad ?id
           ?signin_tenant ?timeouts ~allowed_tenants
           ~api_management_name ~client_id ~client_secret
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?signin_tenant ?timeouts ~allowed_tenants
    ~api_management_name ~client_id ~client_secret
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?signin_tenant ?timeouts ~allowed_tenants
      ~api_management_name ~client_id ~client_secret
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
