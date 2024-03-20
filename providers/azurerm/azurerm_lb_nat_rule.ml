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

type azurerm_lb_nat_rule = {
  backend_address_pool_id : string prop option; [@option]
      (** backend_address_pool_id *)
  backend_port : float prop;  (** backend_port *)
  enable_floating_ip : bool prop option; [@option]
      (** enable_floating_ip *)
  enable_tcp_reset : bool prop option; [@option]
      (** enable_tcp_reset *)
  frontend_ip_configuration_name : string prop;
      (** frontend_ip_configuration_name *)
  frontend_port : float prop option; [@option]  (** frontend_port *)
  frontend_port_end : float prop option; [@option]
      (** frontend_port_end *)
  frontend_port_start : float prop option; [@option]
      (** frontend_port_start *)
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  loadbalancer_id : string prop;  (** loadbalancer_id *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_nat_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_nat_rule ?backend_address_pool_id ?enable_floating_ip
    ?enable_tcp_reset ?frontend_port ?frontend_port_end
    ?frontend_port_start ?id ?idle_timeout_in_minutes ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
    ~name ~protocol ~resource_group_name () : azurerm_lb_nat_rule =
  {
    backend_address_pool_id;
    backend_port;
    enable_floating_ip;
    enable_tcp_reset;
    frontend_ip_configuration_name;
    frontend_port;
    frontend_port_end;
    frontend_port_start;
    id;
    idle_timeout_in_minutes;
    loadbalancer_id;
    name;
    protocol;
    resource_group_name;
    timeouts;
  }

type t = {
  backend_address_pool_id : string prop;
  backend_ip_configuration_id : string prop;
  backend_port : float prop;
  enable_floating_ip : bool prop;
  enable_tcp_reset : bool prop;
  frontend_ip_configuration_id : string prop;
  frontend_ip_configuration_name : string prop;
  frontend_port : float prop;
  frontend_port_end : float prop;
  frontend_port_start : float prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
}

let make ?backend_address_pool_id ?enable_floating_ip
    ?enable_tcp_reset ?frontend_port ?frontend_port_end
    ?frontend_port_start ?id ?idle_timeout_in_minutes ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
    ~name ~protocol ~resource_group_name __id =
  let __type = "azurerm_lb_nat_rule" in
  let __attrs =
    ({
       backend_address_pool_id =
         Prop.computed __type __id "backend_address_pool_id";
       backend_ip_configuration_id =
         Prop.computed __type __id "backend_ip_configuration_id";
       backend_port = Prop.computed __type __id "backend_port";
       enable_floating_ip =
         Prop.computed __type __id "enable_floating_ip";
       enable_tcp_reset =
         Prop.computed __type __id "enable_tcp_reset";
       frontend_ip_configuration_id =
         Prop.computed __type __id "frontend_ip_configuration_id";
       frontend_ip_configuration_name =
         Prop.computed __type __id "frontend_ip_configuration_name";
       frontend_port = Prop.computed __type __id "frontend_port";
       frontend_port_end =
         Prop.computed __type __id "frontend_port_end";
       frontend_port_start =
         Prop.computed __type __id "frontend_port_start";
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       loadbalancer_id = Prop.computed __type __id "loadbalancer_id";
       name = Prop.computed __type __id "name";
       protocol = Prop.computed __type __id "protocol";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_nat_rule
        (azurerm_lb_nat_rule ?backend_address_pool_id
           ?enable_floating_ip ?enable_tcp_reset ?frontend_port
           ?frontend_port_end ?frontend_port_start ?id
           ?idle_timeout_in_minutes ?timeouts ~backend_port
           ~frontend_ip_configuration_name ~loadbalancer_id ~name
           ~protocol ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend_address_pool_id ?enable_floating_ip
    ?enable_tcp_reset ?frontend_port ?frontend_port_end
    ?frontend_port_start ?id ?idle_timeout_in_minutes ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
    ~name ~protocol ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?backend_address_pool_id ?enable_floating_ip
      ?enable_tcp_reset ?frontend_port ?frontend_port_end
      ?frontend_port_start ?id ?idle_timeout_in_minutes ?timeouts
      ~backend_port ~frontend_ip_configuration_name ~loadbalancer_id
      ~name ~protocol ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
