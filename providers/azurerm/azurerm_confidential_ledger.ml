(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azuread_based_service_principal = {
  ledger_role_name : string prop;  (** ledger_role_name *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azuread_based_service_principal *)

type certificate_based_security_principal = {
  ledger_role_name : string prop;  (** ledger_role_name *)
  pem_public_key : string prop;  (** pem_public_key *)
}
[@@deriving yojson_of]
(** certificate_based_security_principal *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_confidential_ledger = {
  id : string prop option; [@option]  (** id *)
  ledger_type : string prop;  (** ledger_type *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  azuread_based_service_principal :
    azuread_based_service_principal list;
  certificate_based_security_principal :
    certificate_based_security_principal list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger *)

let azuread_based_service_principal ~ledger_role_name ~principal_id
    ~tenant_id () : azuread_based_service_principal =
  { ledger_role_name; principal_id; tenant_id }

let certificate_based_security_principal ~ledger_role_name
    ~pem_public_key () : certificate_based_security_principal =
  { ledger_role_name; pem_public_key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_confidential_ledger ?id ?tags ?timeouts ~ledger_type
    ~location ~name ~resource_group_name
    ~azuread_based_service_principal
    ~certificate_based_security_principal () :
    azurerm_confidential_ledger =
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

let make ?id ?tags ?timeouts ~ledger_type ~location ~name
    ~resource_group_name ~azuread_based_service_principal
    ~certificate_based_security_principal __id =
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
        (azurerm_confidential_ledger ?id ?tags ?timeouts ~ledger_type
           ~location ~name ~resource_group_name
           ~azuread_based_service_principal
           ~certificate_based_security_principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~ledger_type ~location
    ~name ~resource_group_name ~azuread_based_service_principal
    ~certificate_based_security_principal __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~ledger_type ~location ~name
      ~resource_group_name ~azuread_based_service_principal
      ~certificate_based_security_principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
