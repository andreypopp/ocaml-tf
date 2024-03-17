(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_nat_pool__timeouts
type azurerm_lb_nat_pool

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

val azurerm_lb_nat_pool :
  ?floating_ip_enabled:bool prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?tcp_reset_enabled:bool prop ->
  ?timeouts:azurerm_lb_nat_pool__timeouts ->
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
