(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_synapse_managed_private_endpoint = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subresource_name : string prop;  (** subresource_name *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_managed_private_endpoint *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_synapse_managed_private_endpoint ?id ?timeouts ~name
    ~subresource_name ~synapse_workspace_id ~target_resource_id () :
    azurerm_synapse_managed_private_endpoint =
  {
    id;
    name;
    subresource_name;
    synapse_workspace_id;
    target_resource_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  subresource_name : string prop;
  synapse_workspace_id : string prop;
  target_resource_id : string prop;
}

let make ?id ?timeouts ~name ~subresource_name ~synapse_workspace_id
    ~target_resource_id __id =
  let __type = "azurerm_synapse_managed_private_endpoint" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subresource_name =
         Prop.computed __type __id "subresource_name";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_managed_private_endpoint
        (azurerm_synapse_managed_private_endpoint ?id ?timeouts ~name
           ~subresource_name ~synapse_workspace_id
           ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~subresource_name
    ~synapse_workspace_id ~target_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~subresource_name ~synapse_workspace_id
      ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
