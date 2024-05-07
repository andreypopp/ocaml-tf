(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

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

type azurerm_confidential_ledger = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_confidential_ledger) -> ()

let yojson_of_azurerm_confidential_ledger =
  (function
   | {
       id = v_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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

let timeouts ?read () : timeouts = { read }

let azurerm_confidential_ledger ?id ?timeouts ~name
    ~resource_group_name () : azurerm_confidential_ledger =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  azuread_based_service_principal :
    azuread_based_service_principal list prop;
  certificate_based_security_principal :
    certificate_based_security_principal list prop;
  id : string prop;
  identity_service_endpoint : string prop;
  ledger_endpoint : string prop;
  ledger_type : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_confidential_ledger" in
  let __attrs =
    ({
       tf_name = __id;
       azuread_based_service_principal =
         Prop.computed __type __id "azuread_based_service_principal";
       certificate_based_security_principal =
         Prop.computed __type __id
           "certificate_based_security_principal";
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
        (azurerm_confidential_ledger ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
