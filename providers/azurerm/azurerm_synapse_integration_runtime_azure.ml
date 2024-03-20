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

type azurerm_synapse_integration_runtime_azure = {
  compute_type : string prop option; [@option]  (** compute_type *)
  core_count : float prop option; [@option]  (** core_count *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  time_to_live_min : float prop option; [@option]
      (** time_to_live_min *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_azure *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_integration_runtime_azure ?compute_type
    ?core_count ?description ?id ?time_to_live_min ?timeouts
    ~location ~name ~synapse_workspace_id () :
    azurerm_synapse_integration_runtime_azure =
  {
    compute_type;
    core_count;
    description;
    id;
    location;
    name;
    synapse_workspace_id;
    time_to_live_min;
    timeouts;
  }

type t = {
  compute_type : string prop;
  core_count : float prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  synapse_workspace_id : string prop;
  time_to_live_min : float prop;
}

let make ?compute_type ?core_count ?description ?id ?time_to_live_min
    ?timeouts ~location ~name ~synapse_workspace_id __id =
  let __type = "azurerm_synapse_integration_runtime_azure" in
  let __attrs =
    ({
       compute_type = Prop.computed __type __id "compute_type";
       core_count = Prop.computed __type __id "core_count";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
       time_to_live_min =
         Prop.computed __type __id "time_to_live_min";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_integration_runtime_azure
        (azurerm_synapse_integration_runtime_azure ?compute_type
           ?core_count ?description ?id ?time_to_live_min ?timeouts
           ~location ~name ~synapse_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_type ?core_count ?description ?id
    ?time_to_live_min ?timeouts ~location ~name ~synapse_workspace_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?compute_type ?core_count ?description ?id ?time_to_live_min
      ?timeouts ~location ~name ~synapse_workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
