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

type azurerm_synapse_workspace_key = {
  active : bool prop;  (** active *)
  customer_managed_key_name : string prop;
      (** customer_managed_key_name *)
  customer_managed_key_versionless_id : string prop option; [@option]
      (** customer_managed_key_versionless_id *)
  id : string prop option; [@option]  (** id *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_workspace_key
    ?customer_managed_key_versionless_id ?id ?timeouts ~active
    ~customer_managed_key_name ~synapse_workspace_id () :
    azurerm_synapse_workspace_key =
  {
    active;
    customer_managed_key_name;
    customer_managed_key_versionless_id;
    id;
    synapse_workspace_id;
    timeouts;
  }

type t = {
  active : bool prop;
  customer_managed_key_name : string prop;
  customer_managed_key_versionless_id : string prop;
  id : string prop;
  synapse_workspace_id : string prop;
}

let make ?customer_managed_key_versionless_id ?id ?timeouts ~active
    ~customer_managed_key_name ~synapse_workspace_id __id =
  let __type = "azurerm_synapse_workspace_key" in
  let __attrs =
    ({
       active = Prop.computed __type __id "active";
       customer_managed_key_name =
         Prop.computed __type __id "customer_managed_key_name";
       customer_managed_key_versionless_id =
         Prop.computed __type __id
           "customer_managed_key_versionless_id";
       id = Prop.computed __type __id "id";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_workspace_key
        (azurerm_synapse_workspace_key
           ?customer_managed_key_versionless_id ?id ?timeouts ~active
           ~customer_managed_key_name ~synapse_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_managed_key_versionless_id ?id
    ?timeouts ~active ~customer_managed_key_name
    ~synapse_workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_key_versionless_id ?id ?timeouts ~active
      ~customer_managed_key_name ~synapse_workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
