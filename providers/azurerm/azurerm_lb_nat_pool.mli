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

type azurerm_lb_nat_pool

val azurerm_lb_nat_pool :
  ?floating_ip_enabled:bool prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?tcp_reset_enabled:bool prop ->
  ?timeouts:timeouts ->
  backend_port:float prop ->
  frontend_ip_configuration_name:string prop ->
  frontend_port_end:float prop ->
  frontend_port_start:float prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_lb_nat_pool

val yojson_of_azurerm_lb_nat_pool : azurerm_lb_nat_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?floating_ip_enabled:bool prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?tcp_reset_enabled:bool prop ->
  ?timeouts:timeouts ->
  backend_port:float prop ->
  frontend_ip_configuration_name:string prop ->
  frontend_port_end:float prop ->
  frontend_port_start:float prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?floating_ip_enabled:bool prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?tcp_reset_enabled:bool prop ->
  ?timeouts:timeouts ->
  backend_port:float prop ->
  frontend_ip_configuration_name:string prop ->
  frontend_port_end:float prop ->
  frontend_port_start:float prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
