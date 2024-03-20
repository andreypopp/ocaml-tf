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

type route = {
  address_prefix : string prop;  (** address_prefix *)
  name : string prop;  (** name *)
  next_hop_in_ip_address : string prop;
      (** next_hop_in_ip_address *)
  next_hop_type : string prop;  (** next_hop_type *)
}
[@@deriving yojson_of]

type azurerm_route_table = {
  disable_bgp_route_propagation : bool prop option; [@option]
      (** disable_bgp_route_propagation *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  route : route list option; [@option]  (** route *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_table *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_route_table ?disable_bgp_route_propagation ?id ?route
    ?tags ?timeouts ~location ~name ~resource_group_name () :
    azurerm_route_table =
  {
    disable_bgp_route_propagation;
    id;
    location;
    name;
    resource_group_name;
    route;
    tags;
    timeouts;
  }

type t = {
  disable_bgp_route_propagation : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  route : route list prop;
  subnets : string list prop;
  tags : (string * string) list prop;
}

let make ?disable_bgp_route_propagation ?id ?route ?tags ?timeouts
    ~location ~name ~resource_group_name __id =
  let __type = "azurerm_route_table" in
  let __attrs =
    ({
       disable_bgp_route_propagation =
         Prop.computed __type __id "disable_bgp_route_propagation";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route = Prop.computed __type __id "route";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route_table
        (azurerm_route_table ?disable_bgp_route_propagation ?id
           ?route ?tags ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_bgp_route_propagation ?id ?route
    ?tags ?timeouts ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?disable_bgp_route_propagation ?id ?route ?tags ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
