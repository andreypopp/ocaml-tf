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

type azurerm_route_server = {
  branch_to_branch_traffic_enabled : bool prop option; [@option]
      (** branch_to_branch_traffic_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_server *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_route_server ?branch_to_branch_traffic_enabled ?id ?tags
    ?timeouts ~location ~name ~public_ip_address_id
    ~resource_group_name ~sku ~subnet_id () : azurerm_route_server =
  {
    branch_to_branch_traffic_enabled;
    id;
    location;
    name;
    public_ip_address_id;
    resource_group_name;
    sku;
    subnet_id;
    tags;
    timeouts;
  }

type t = {
  branch_to_branch_traffic_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_ip_address_id : string prop;
  resource_group_name : string prop;
  routing_state : string prop;
  sku : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  virtual_router_asn : float prop;
  virtual_router_ips : string list prop;
}

let make ?branch_to_branch_traffic_enabled ?id ?tags ?timeouts
    ~location ~name ~public_ip_address_id ~resource_group_name ~sku
    ~subnet_id __id =
  let __type = "azurerm_route_server" in
  let __attrs =
    ({
       branch_to_branch_traffic_enabled =
         Prop.computed __type __id "branch_to_branch_traffic_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_ip_address_id =
         Prop.computed __type __id "public_ip_address_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       routing_state = Prop.computed __type __id "routing_state";
       sku = Prop.computed __type __id "sku";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       virtual_router_asn =
         Prop.computed __type __id "virtual_router_asn";
       virtual_router_ips =
         Prop.computed __type __id "virtual_router_ips";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route_server
        (azurerm_route_server ?branch_to_branch_traffic_enabled ?id
           ?tags ?timeouts ~location ~name ~public_ip_address_id
           ~resource_group_name ~sku ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?branch_to_branch_traffic_enabled ?id ?tags
    ?timeouts ~location ~name ~public_ip_address_id
    ~resource_group_name ~sku ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?branch_to_branch_traffic_enabled ?id ?tags ?timeouts
      ~location ~name ~public_ip_address_id ~resource_group_name ~sku
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
