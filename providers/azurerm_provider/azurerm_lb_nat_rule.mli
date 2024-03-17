(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_nat_rule__timeouts
type azurerm_lb_nat_rule

val azurerm_lb_nat_rule :
  ?backend_address_pool_id:string ->
  ?enable_floating_ip:bool ->
  ?enable_tcp_reset:bool ->
  ?frontend_port:float ->
  ?frontend_port_end:float ->
  ?frontend_port_start:float ->
  ?id:string ->
  ?idle_timeout_in_minutes:float ->
  ?timeouts:azurerm_lb_nat_rule__timeouts ->
  backend_port:float ->
  frontend_ip_configuration_name:string ->
  loadbalancer_id:string ->
  name:string ->
  protocol:string ->
  resource_group_name:string ->
  string ->
  unit
