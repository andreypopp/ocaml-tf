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

type azurerm_network_manager_management_group_connection = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop;  (** management_group_id *)
  name : string prop;  (** name *)
  network_manager_id : string prop;  (** network_manager_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_management_group_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_management_group_connection ?description
    ?id ?timeouts ~management_group_id ~name ~network_manager_id () :
    azurerm_network_manager_management_group_connection =
  {
    description;
    id;
    management_group_id;
    name;
    network_manager_id;
    timeouts;
  }

type t = {
  connection_state : string prop;
  description : string prop;
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

let make ?description ?id ?timeouts ~management_group_id ~name
    ~network_manager_id __id =
  let __type =
    "azurerm_network_manager_management_group_connection"
  in
  let __attrs =
    ({
       connection_state =
         Prop.computed __type __id "connection_state";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       name = Prop.computed __type __id "name";
       network_manager_id =
         Prop.computed __type __id "network_manager_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_management_group_connection
        (azurerm_network_manager_management_group_connection
           ?description ?id ?timeouts ~management_group_id ~name
           ~network_manager_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~management_group_id ~name ~network_manager_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~management_group_id ~name
      ~network_manager_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
