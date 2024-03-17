(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_nat_rule__timeouts
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
  ?timeouts:azurerm_lb_nat_rule__timeouts ->
  backend_port:float prop ->
  frontend_ip_configuration_name:string prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
