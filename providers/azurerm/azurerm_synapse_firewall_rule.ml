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

type azurerm_synapse_firewall_rule = {
  end_ip_address : string prop;  (** end_ip_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  start_ip_address : string prop;  (** start_ip_address *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_firewall_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_firewall_rule ?id ?timeouts ~end_ip_address ~name
    ~start_ip_address ~synapse_workspace_id () :
    azurerm_synapse_firewall_rule =
  {
    end_ip_address;
    id;
    name;
    start_ip_address;
    synapse_workspace_id;
    timeouts;
  }

type t = {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  start_ip_address : string prop;
  synapse_workspace_id : string prop;
}

let make ?id ?timeouts ~end_ip_address ~name ~start_ip_address
    ~synapse_workspace_id __id =
  let __type = "azurerm_synapse_firewall_rule" in
  let __attrs =
    ({
       end_ip_address = Prop.computed __type __id "end_ip_address";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       start_ip_address =
         Prop.computed __type __id "start_ip_address";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_firewall_rule
        (azurerm_synapse_firewall_rule ?id ?timeouts ~end_ip_address
           ~name ~start_ip_address ~synapse_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~end_ip_address ~name
    ~start_ip_address ~synapse_workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~end_ip_address ~name ~start_ip_address
      ~synapse_workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
