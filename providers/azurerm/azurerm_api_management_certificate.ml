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

type azurerm_api_management_certificate = {
  api_management_name : string prop;
  data : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_identity_client_id : string prop option; [@option]
  key_vault_secret_id : string prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_certificate) -> ()

let yojson_of_azurerm_api_management_certificate =
  (function
   | {
       api_management_name = v_api_management_name;
       data = v_data;
       id = v_id;
       key_vault_identity_client_id = v_key_vault_identity_client_id;
       key_vault_secret_id = v_key_vault_secret_id;
       name = v_name;
       password = v_password;
       resource_group_name = v_resource_group_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_vault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_identity_client_id", arg in
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
         match v_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_certificate ?data ?id
    ?key_vault_identity_client_id ?key_vault_secret_id ?password
    ?timeouts ~api_management_name ~name ~resource_group_name () :
    azurerm_api_management_certificate =
  {
    api_management_name;
    data;
    id;
    key_vault_identity_client_id;
    key_vault_secret_id;
    name;
    password;
    resource_group_name;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  data : string prop;
  expiration : string prop;
  id : string prop;
  key_vault_identity_client_id : string prop;
  key_vault_secret_id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  subject : string prop;
  thumbprint : string prop;
}

let make ?data ?id ?key_vault_identity_client_id ?key_vault_secret_id
    ?password ?timeouts ~api_management_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_api_management_certificate" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       data = Prop.computed __type __id "data";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
       key_vault_identity_client_id =
         Prop.computed __type __id "key_vault_identity_client_id";
       key_vault_secret_id =
         Prop.computed __type __id "key_vault_secret_id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subject = Prop.computed __type __id "subject";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_certificate
        (azurerm_api_management_certificate ?data ?id
           ?key_vault_identity_client_id ?key_vault_secret_id
           ?password ?timeouts ~api_management_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?data ?id ?key_vault_identity_client_id
    ?key_vault_secret_id ?password ?timeouts ~api_management_name
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?data ?id ?key_vault_identity_client_id ?key_vault_secret_id
      ?password ?timeouts ~api_management_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
