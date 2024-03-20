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

type azurerm_eventhub_namespace_disaster_recovery_config = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  partner_namespace_id : string prop;  (** partner_namespace_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_disaster_recovery_config *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub_namespace_disaster_recovery_config ?id ?timeouts
    ~name ~namespace_name ~partner_namespace_id ~resource_group_name
    () : azurerm_eventhub_namespace_disaster_recovery_config =
  {
    id;
    name;
    namespace_name;
    partner_namespace_id;
    resource_group_name;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  namespace_name : string prop;
  partner_namespace_id : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~name ~namespace_name ~partner_namespace_id
    ~resource_group_name __id =
  let __type =
    "azurerm_eventhub_namespace_disaster_recovery_config"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       partner_namespace_id =
         Prop.computed __type __id "partner_namespace_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_namespace_disaster_recovery_config
        (azurerm_eventhub_namespace_disaster_recovery_config ?id
           ?timeouts ~name ~namespace_name ~partner_namespace_id
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~namespace_name
    ~partner_namespace_id ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~namespace_name ~partner_namespace_id
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
