(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azuread_based_service_principal = {
  ledger_role_name : string prop;
  principal_id : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azuread_based_service_principal) -> ()

let yojson_of_azuread_based_service_principal =
  (function
   | {
       ledger_role_name = v_ledger_role_name;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ledger_role_name
         in
         ("ledger_role_name", arg) :: bnds
       in
       `Assoc bnds
    : azuread_based_service_principal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azuread_based_service_principal

[@@@deriving.end]

type certificate_based_security_principal = {
  ledger_role_name : string prop;
  pem_public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_based_security_principal) -> ()

let yojson_of_certificate_based_security_principal =
  (function
   | {
       ledger_role_name = v_ledger_role_name;
       pem_public_key = v_pem_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pem_public_key
         in
         ("pem_public_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ledger_role_name
         in
         ("ledger_role_name", arg) :: bnds
       in
       `Assoc bnds
    : certificate_based_security_principal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_based_security_principal

[@@@deriving.end]

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

type azurerm_confidential_ledger = {
  id : string prop option; [@option]
  ledger_type : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  azuread_based_service_principal :
    azuread_based_service_principal list;
  certificate_based_security_principal :
    certificate_based_security_principal list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_confidential_ledger) -> ()

let yojson_of_azurerm_confidential_ledger =
  (function
   | {
       id = v_id;
       ledger_type = v_ledger_type;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       azuread_based_service_principal =
         v_azuread_based_service_principal;
       certificate_based_security_principal =
         v_certificate_based_security_principal;
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
           yojson_of_list
             yojson_of_certificate_based_security_principal
             v_certificate_based_security_principal
         in
         ("certificate_based_security_principal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_azuread_based_service_principal
             v_azuread_based_service_principal
         in
         ("azuread_based_service_principal", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ledger_type in
         ("ledger_type", arg) :: bnds
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
    : azurerm_confidential_ledger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_confidential_ledger

[@@@deriving.end]

let azuread_based_service_principal ~ledger_role_name ~principal_id
    ~tenant_id () : azuread_based_service_principal =
  { ledger_role_name; principal_id; tenant_id }

let certificate_based_security_principal ~ledger_role_name
    ~pem_public_key () : certificate_based_security_principal =
  { ledger_role_name; pem_public_key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_confidential_ledger ?id ?tags
    ?(certificate_based_security_principal = []) ?timeouts
    ~ledger_type ~location ~name ~resource_group_name
    ~azuread_based_service_principal () : azurerm_confidential_ledger
    =
  {
    id;
    ledger_type;
    location;
    name;
    resource_group_name;
    tags;
    azuread_based_service_principal;
    certificate_based_security_principal;
    timeouts;
  }

type t = {
  id : string prop;
  identity_service_endpoint : string prop;
  ledger_endpoint : string prop;
  ledger_type : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?(certificate_based_security_principal = [])
    ?timeouts ~ledger_type ~location ~name ~resource_group_name
    ~azuread_based_service_principal __id =
  let __type = "azurerm_confidential_ledger" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       identity_service_endpoint =
         Prop.computed __type __id "identity_service_endpoint";
       ledger_endpoint = Prop.computed __type __id "ledger_endpoint";
       ledger_type = Prop.computed __type __id "ledger_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_confidential_ledger
        (azurerm_confidential_ledger ?id ?tags
           ~certificate_based_security_principal ?timeouts
           ~ledger_type ~location ~name ~resource_group_name
           ~azuread_based_service_principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags
    ?(certificate_based_security_principal = []) ?timeouts
    ~ledger_type ~location ~name ~resource_group_name
    ~azuread_based_service_principal __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~certificate_based_security_principal ?timeouts
      ~ledger_type ~location ~name ~resource_group_name
      ~azuread_based_service_principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
