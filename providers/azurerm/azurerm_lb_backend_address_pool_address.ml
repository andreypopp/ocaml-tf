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

type inbound_nat_rule_port_mapping = {
  backend_port : float prop;  (** backend_port *)
  frontend_port : float prop;  (** frontend_port *)
  inbound_nat_rule_name : string prop;  (** inbound_nat_rule_name *)
}
[@@deriving yojson_of]

type azurerm_lb_backend_address_pool_address = {
  backend_address_ip_configuration_id : string prop option; [@option]
      (** For global load balancer, user needs to specify the `backend_address_ip_configuration_id` of the added regional load balancers *)
  backend_address_pool_id : string prop;
      (** backend_address_pool_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  name : string prop;  (** name *)
  virtual_network_id : string prop option; [@option]
      (** For regional load balancer, user needs to specify `virtual_network_id` and `ip_address` *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_backend_address_pool_address *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_backend_address_pool_address
    ?backend_address_ip_configuration_id ?id ?ip_address
    ?virtual_network_id ?timeouts ~backend_address_pool_id ~name () :
    azurerm_lb_backend_address_pool_address =
  {
    backend_address_ip_configuration_id;
    backend_address_pool_id;
    id;
    ip_address;
    name;
    virtual_network_id;
    timeouts;
  }

type t = {
  backend_address_ip_configuration_id : string prop;
  backend_address_pool_id : string prop;
  id : string prop;
  inbound_nat_rule_port_mapping :
    inbound_nat_rule_port_mapping list prop;
  ip_address : string prop;
  name : string prop;
  virtual_network_id : string prop;
}

let make ?backend_address_ip_configuration_id ?id ?ip_address
    ?virtual_network_id ?timeouts ~backend_address_pool_id ~name __id
    =
  let __type = "azurerm_lb_backend_address_pool_address" in
  let __attrs =
    ({
       backend_address_ip_configuration_id =
         Prop.computed __type __id
           "backend_address_ip_configuration_id";
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       id = Prop.computed __type __id "id";
       inbound_nat_rule_port_mapping =
         Prop.computed __type __id "inbound_nat_rule_port_mapping";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_backend_address_pool_address
        (azurerm_lb_backend_address_pool_address
           ?backend_address_ip_configuration_id ?id ?ip_address
           ?virtual_network_id ?timeouts ~backend_address_pool_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend_address_ip_configuration_id ?id
    ?ip_address ?virtual_network_id ?timeouts
    ~backend_address_pool_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?backend_address_ip_configuration_id ?id ?ip_address
      ?virtual_network_id ?timeouts ~backend_address_pool_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
