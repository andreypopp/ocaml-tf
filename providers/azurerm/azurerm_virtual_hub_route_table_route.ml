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

type azurerm_virtual_hub_route_table_route = {
  destinations : string prop list;  (** destinations *)
  destinations_type : string prop;  (** destinations_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  next_hop : string prop;  (** next_hop *)
  next_hop_type : string prop option; [@option]  (** next_hop_type *)
  route_table_id : string prop;  (** route_table_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table_route *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_route_table_route ?id ?next_hop_type
    ?timeouts ~destinations ~destinations_type ~name ~next_hop
    ~route_table_id () : azurerm_virtual_hub_route_table_route =
  {
    destinations;
    destinations_type;
    id;
    name;
    next_hop;
    next_hop_type;
    route_table_id;
    timeouts;
  }

type t = {
  destinations : string list prop;
  destinations_type : string prop;
  id : string prop;
  name : string prop;
  next_hop : string prop;
  next_hop_type : string prop;
  route_table_id : string prop;
}

let make ?id ?next_hop_type ?timeouts ~destinations
    ~destinations_type ~name ~next_hop ~route_table_id __id =
  let __type = "azurerm_virtual_hub_route_table_route" in
  let __attrs =
    ({
       destinations = Prop.computed __type __id "destinations";
       destinations_type =
         Prop.computed __type __id "destinations_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       next_hop = Prop.computed __type __id "next_hop";
       next_hop_type = Prop.computed __type __id "next_hop_type";
       route_table_id = Prop.computed __type __id "route_table_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_route_table_route
        (azurerm_virtual_hub_route_table_route ?id ?next_hop_type
           ?timeouts ~destinations ~destinations_type ~name ~next_hop
           ~route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?next_hop_type ?timeouts ~destinations
    ~destinations_type ~name ~next_hop ~route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?next_hop_type ?timeouts ~destinations
      ~destinations_type ~name ~next_hop ~route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
