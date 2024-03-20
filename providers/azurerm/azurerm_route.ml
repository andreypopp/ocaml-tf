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

type azurerm_route = {
  address_prefix : string prop;  (** address_prefix *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  next_hop_in_ip_address : string prop option; [@option]
      (** next_hop_in_ip_address *)
  next_hop_type : string prop;  (** next_hop_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  route_table_name : string prop;  (** route_table_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_route ?id ?next_hop_in_ip_address ?timeouts
    ~address_prefix ~name ~next_hop_type ~resource_group_name
    ~route_table_name () : azurerm_route =
  {
    address_prefix;
    id;
    name;
    next_hop_in_ip_address;
    next_hop_type;
    resource_group_name;
    route_table_name;
    timeouts;
  }

type t = {
  address_prefix : string prop;
  id : string prop;
  name : string prop;
  next_hop_in_ip_address : string prop;
  next_hop_type : string prop;
  resource_group_name : string prop;
  route_table_name : string prop;
}

let make ?id ?next_hop_in_ip_address ?timeouts ~address_prefix ~name
    ~next_hop_type ~resource_group_name ~route_table_name __id =
  let __type = "azurerm_route" in
  let __attrs =
    ({
       address_prefix = Prop.computed __type __id "address_prefix";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       next_hop_in_ip_address =
         Prop.computed __type __id "next_hop_in_ip_address";
       next_hop_type = Prop.computed __type __id "next_hop_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route_table_name =
         Prop.computed __type __id "route_table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route
        (azurerm_route ?id ?next_hop_in_ip_address ?timeouts
           ~address_prefix ~name ~next_hop_type ~resource_group_name
           ~route_table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?next_hop_in_ip_address ?timeouts
    ~address_prefix ~name ~next_hop_type ~resource_group_name
    ~route_table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?next_hop_in_ip_address ?timeouts ~address_prefix ~name
      ~next_hop_type ~resource_group_name ~route_table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
