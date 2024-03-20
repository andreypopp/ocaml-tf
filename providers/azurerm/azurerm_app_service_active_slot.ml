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

type azurerm_app_service_active_slot = {
  app_service_name : string prop;  (** app_service_name *)
  app_service_slot_name : string prop;  (** app_service_slot_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_active_slot *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_active_slot ?id ?timeouts ~app_service_name
    ~app_service_slot_name ~resource_group_name () :
    azurerm_app_service_active_slot =
  {
    app_service_name;
    app_service_slot_name;
    id;
    resource_group_name;
    timeouts;
  }

type t = {
  app_service_name : string prop;
  app_service_slot_name : string prop;
  id : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~app_service_name ~app_service_slot_name
    ~resource_group_name __id =
  let __type = "azurerm_app_service_active_slot" in
  let __attrs =
    ({
       app_service_name =
         Prop.computed __type __id "app_service_name";
       app_service_slot_name =
         Prop.computed __type __id "app_service_slot_name";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_active_slot
        (azurerm_app_service_active_slot ?id ?timeouts
           ~app_service_name ~app_service_slot_name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~app_service_name
    ~app_service_slot_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~app_service_name ~app_service_slot_name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
