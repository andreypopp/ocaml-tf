(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_outbound_rule__frontend_ip_configuration
type azurerm_lb_outbound_rule__timeouts
type azurerm_lb_outbound_rule

val azurerm_lb_outbound_rule :
  ?allocated_outbound_ports:float ->
  ?enable_tcp_reset:bool ->
  ?id:string ->
  ?idle_timeout_in_minutes:float ->
  ?timeouts:azurerm_lb_outbound_rule__timeouts ->
  backend_address_pool_id:string ->
  loadbalancer_id:string ->
  name:string ->
  protocol:string ->
  frontend_ip_configuration:
    azurerm_lb_outbound_rule__frontend_ip_configuration list ->
  string ->
  unit
