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

type azurerm_automation_connection_classic_certificate = {
  automation_account_name : string prop;
      (** automation_account_name *)
  certificate_asset_name : string prop;
      (** certificate_asset_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_id : string prop;  (** subscription_id *)
  subscription_name : string prop;  (** subscription_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_classic_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_connection_classic_certificate ?description
    ?id ?timeouts ~automation_account_name ~certificate_asset_name
    ~name ~resource_group_name ~subscription_id ~subscription_name ()
    : azurerm_automation_connection_classic_certificate =
  {
    automation_account_name;
    certificate_asset_name;
    description;
    id;
    name;
    resource_group_name;
    subscription_id;
    subscription_name;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  certificate_asset_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
  subscription_name : string prop;
}

let make ?description ?id ?timeouts ~automation_account_name
    ~certificate_asset_name ~name ~resource_group_name
    ~subscription_id ~subscription_name __id =
  let __type = "azurerm_automation_connection_classic_certificate" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       certificate_asset_name =
         Prop.computed __type __id "certificate_asset_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subscription_id = Prop.computed __type __id "subscription_id";
       subscription_name =
         Prop.computed __type __id "subscription_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_connection_classic_certificate
        (azurerm_automation_connection_classic_certificate
           ?description ?id ?timeouts ~automation_account_name
           ~certificate_asset_name ~name ~resource_group_name
           ~subscription_id ~subscription_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~automation_account_name ~certificate_asset_name ~name
    ~resource_group_name ~subscription_id ~subscription_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~automation_account_name
      ~certificate_asset_name ~name ~resource_group_name
      ~subscription_id ~subscription_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
