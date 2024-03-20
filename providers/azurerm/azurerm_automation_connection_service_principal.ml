(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_connection_service_principal = {
  application_id : string prop;  (** application_id *)
  automation_account_name : string prop;
      (** automation_account_name *)
  certificate_thumbprint : string prop;
      (** certificate_thumbprint *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_id : string prop;  (** subscription_id *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_service_principal *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_connection_service_principal ?description ?id
    ?timeouts ~application_id ~automation_account_name
    ~certificate_thumbprint ~name ~resource_group_name
    ~subscription_id ~tenant_id () :
    azurerm_automation_connection_service_principal =
  {
    application_id;
    automation_account_name;
    certificate_thumbprint;
    description;
    id;
    name;
    resource_group_name;
    subscription_id;
    tenant_id;
    timeouts;
  }

type t = {
  application_id : string prop;
  automation_account_name : string prop;
  certificate_thumbprint : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
  tenant_id : string prop;
}

let make ?description ?id ?timeouts ~application_id
    ~automation_account_name ~certificate_thumbprint ~name
    ~resource_group_name ~subscription_id ~tenant_id __id =
  let __type = "azurerm_automation_connection_service_principal" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       certificate_thumbprint =
         Prop.computed __type __id "certificate_thumbprint";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subscription_id = Prop.computed __type __id "subscription_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_connection_service_principal
        (azurerm_automation_connection_service_principal ?description
           ?id ?timeouts ~application_id ~automation_account_name
           ~certificate_thumbprint ~name ~resource_group_name
           ~subscription_id ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~application_id
    ~automation_account_name ~certificate_thumbprint ~name
    ~resource_group_name ~subscription_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~application_id
      ~automation_account_name ~certificate_thumbprint ~name
      ~resource_group_name ~subscription_id ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
