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

type azurerm_lb_nat_pool = {
  backend_port : float prop;  (** backend_port *)
  floating_ip_enabled : bool prop option; [@option]
      (** floating_ip_enabled *)
  frontend_ip_configuration_name : string prop;
      (** frontend_ip_configuration_name *)
  frontend_port_end : float prop;  (** frontend_port_end *)
  frontend_port_start : float prop;  (** frontend_port_start *)
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  loadbalancer_id : string prop;  (** loadbalancer_id *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  resource_group_name : string prop;  (** resource_group_name *)
  tcp_reset_enabled : bool prop option; [@option]
      (** tcp_reset_enabled *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb_nat_pool *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb_nat_pool ?floating_ip_enabled ?id
    ?idle_timeout_in_minutes ?tcp_reset_enabled ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~frontend_port_end
    ~frontend_port_start ~loadbalancer_id ~name ~protocol
    ~resource_group_name () : azurerm_lb_nat_pool =
  {
    backend_port;
    floating_ip_enabled;
    frontend_ip_configuration_name;
    frontend_port_end;
    frontend_port_start;
    id;
    idle_timeout_in_minutes;
    loadbalancer_id;
    name;
    protocol;
    resource_group_name;
    tcp_reset_enabled;
    timeouts;
  }

type t = {
  backend_port : float prop;
  floating_ip_enabled : bool prop;
  frontend_ip_configuration_id : string prop;
  frontend_ip_configuration_name : string prop;
  frontend_port_end : float prop;
  frontend_port_start : float prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
  tcp_reset_enabled : bool prop;
}

let make ?floating_ip_enabled ?id ?idle_timeout_in_minutes
    ?tcp_reset_enabled ?timeouts ~backend_port
    ~frontend_ip_configuration_name ~frontend_port_end
    ~frontend_port_start ~loadbalancer_id ~name ~protocol
    ~resource_group_name __id =
  let __type = "azurerm_lb_nat_pool" in
  let __attrs =
    ({
       backend_port = Prop.computed __type __id "backend_port";
       floating_ip_enabled =
         Prop.computed __type __id "floating_ip_enabled";
       frontend_ip_configuration_id =
         Prop.computed __type __id "frontend_ip_configuration_id";
       frontend_ip_configuration_name =
         Prop.computed __type __id "frontend_ip_configuration_name";
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
       tcp_reset_enabled =
         Prop.computed __type __id "tcp_reset_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb_nat_pool
        (azurerm_lb_nat_pool ?floating_ip_enabled ?id
           ?idle_timeout_in_minutes ?tcp_reset_enabled ?timeouts
           ~backend_port ~frontend_ip_configuration_name
           ~frontend_port_end ~frontend_port_start ~loadbalancer_id
           ~name ~protocol ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?floating_ip_enabled ?id
    ?idle_timeout_in_minutes ?tcp_reset_enabled ?timeouts
    ~backend_port ~frontend_ip_configuration_name ~frontend_port_end
    ~frontend_port_start ~loadbalancer_id ~name ~protocol
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?floating_ip_enabled ?id ?idle_timeout_in_minutes
      ?tcp_reset_enabled ?timeouts ~backend_port
      ~frontend_ip_configuration_name ~frontend_port_end
      ~frontend_port_start ~loadbalancer_id ~name ~protocol
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
