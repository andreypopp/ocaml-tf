(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type route = {
  destinations : string prop list;  (** destinations *)
  destinations_type : string prop;  (** destinations_type *)
  name : string prop;  (** name *)
  next_hop : string prop;  (** next_hop *)
  next_hop_type : string prop option; [@option]  (** next_hop_type *)
}
[@@deriving yojson_of]
(** route *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_hub_route_table = {
  id : string prop option; [@option]  (** id *)
  labels : string prop list option; [@option]  (** labels *)
  name : string prop;  (** name *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  route : route list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table *)

let route ?next_hop_type ~destinations ~destinations_type ~name
    ~next_hop () : route =
  { destinations; destinations_type; name; next_hop; next_hop_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_route_table ?id ?labels ?timeouts ~name
    ~virtual_hub_id ~route () : azurerm_virtual_hub_route_table =
  { id; labels; name; virtual_hub_id; route; timeouts }

type t = {
  id : string prop;
  labels : string list prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?labels ?timeouts ~name ~virtual_hub_id ~route __id =
  let __type = "azurerm_virtual_hub_route_table" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_route_table
        (azurerm_virtual_hub_route_table ?id ?labels ?timeouts ~name
           ~virtual_hub_id ~route ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?timeouts ~name ~virtual_hub_id
    ~route __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?timeouts ~name ~virtual_hub_id ~route __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
