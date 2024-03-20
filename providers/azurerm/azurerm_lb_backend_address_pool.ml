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

type tunnel_interface = {
  identifier : float prop;  (** identifier *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** tunnel_interface *)

type azurerm_lb_backend_address_pool = {
  id : string prop option; [@option]  (** id *)
  loadbalancer_id : string prop;  (** loadbalancer_id *)
  name : string prop;  (** name *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  timeouts : timeouts option;
  tunnel_interface : tunnel_interface list;
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let tunnel_interface ~identifier ~port ~protocol ~type_ () :
    tunnel_interface =
  { identifier; port; protocol; type_ }

let azurerm_lb_backend_address_pool ?id ?virtual_network_id ?timeouts
    ~loadbalancer_id ~name ~tunnel_interface () :
    azurerm_lb_backend_address_pool =
  {
    id;
    loadbalancer_id;
    name;
    virtual_network_id;
    timeouts;
    tunnel_interface;
  }

type t = {
  backend_ip_configurations : string list prop;
  id : string prop;
  inbound_nat_rules : string list prop;
  load_balancing_rules : string list prop;
  loadbalancer_id : string prop;
  name : string prop;
  outbound_rules : string list prop;
  virtual_network_id : string prop;
}

let make ?id ?virtual_network_id ?timeouts ~loadbalancer_id ~name
    ~tunnel_interface __id =
  let __type = "azurerm_lb_backend_address_pool" in
  let __attrs =
    ({
       backend_ip_configurations =
         Prop.computed __type __id "backend_ip_configurations";
       id = Prop.computed __type __id "id";
       inbound_nat_rules =
         Prop.computed __type __id "inbound_nat_rules";
       load_balancing_rules =
         Prop.computed __type __id "load_balancing_rules";
       loadbalancer_id = Prop.computed __type __id "loadbalancer_id";
       name = Prop.computed __type __id "name";
       outbound_rules = Prop.computed __type __id "outbound_rules";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_backend_address_pool
        (azurerm_lb_backend_address_pool ?id ?virtual_network_id
           ?timeouts ~loadbalancer_id ~name ~tunnel_interface ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?virtual_network_id ?timeouts
    ~loadbalancer_id ~name ~tunnel_interface __id =
  let (r : _ Tf_core.resource) =
    make ?id ?virtual_network_id ?timeouts ~loadbalancer_id ~name
      ~tunnel_interface __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
