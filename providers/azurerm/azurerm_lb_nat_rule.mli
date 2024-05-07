(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_lb_nat_rule

val azurerm_lb_nat_rule :
  ?backend_address_pool_id:string prop ->
  ?enable_floating_ip:bool prop ->
  ?enable_tcp_reset:bool prop ->
  ?frontend_port:float prop ->
  ?frontend_port_end:float prop ->
  ?frontend_port_start:float prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?timeouts:timeouts ->
  backend_port:float prop ->
  frontend_ip_configuration_name:string prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_lb_nat_rule

val yojson_of_azurerm_lb_nat_rule : azurerm_lb_nat_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?backend_address_pool_id:string prop ->
  ?enable_floating_ip:bool prop ->
  ?enable_tcp_reset:bool prop ->
  ?frontend_port:float prop ->
  ?frontend_port_end:float prop ->
  ?frontend_port_start:float prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?timeouts:timeouts ->
  backend_port:float prop ->
  frontend_ip_configuration_name:string prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?backend_address_pool_id:string prop ->
  ?enable_floating_ip:bool prop ->
  ?enable_tcp_reset:bool prop ->
  ?frontend_port:float prop ->
  ?frontend_port_end:float prop ->
  ?frontend_port_start:float prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?timeouts:timeouts ->
  backend_port:float prop ->
  frontend_ip_configuration_name:string prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
