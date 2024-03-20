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

type azurerm_synapse_integration_runtime_self_hosted = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_self_hosted *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_integration_runtime_self_hosted ?description ?id
    ?timeouts ~name ~synapse_workspace_id () :
    azurerm_synapse_integration_runtime_self_hosted =
  { description; id; name; synapse_workspace_id; timeouts }

type t = {
  authorization_key_primary : string prop;
  authorization_key_secondary : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  synapse_workspace_id : string prop;
}

let make ?description ?id ?timeouts ~name ~synapse_workspace_id __id
    =
  let __type = "azurerm_synapse_integration_runtime_self_hosted" in
  let __attrs =
    ({
       authorization_key_primary =
         Prop.computed __type __id "authorization_key_primary";
       authorization_key_secondary =
         Prop.computed __type __id "authorization_key_secondary";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_integration_runtime_self_hosted
        (azurerm_synapse_integration_runtime_self_hosted ?description
           ?id ?timeouts ~name ~synapse_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~synapse_workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~synapse_workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
