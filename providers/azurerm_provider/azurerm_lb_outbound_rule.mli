(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_outbound_rule__frontend_ip_configuration
type azurerm_lb_outbound_rule__timeouts
type azurerm_lb_outbound_rule

val azurerm_lb_outbound_rule :
  ?allocated_outbound_ports:float prop ->
  ?enable_tcp_reset:bool prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?timeouts:azurerm_lb_outbound_rule__timeouts ->
  backend_address_pool_id:string prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  frontend_ip_configuration:
    azurerm_lb_outbound_rule__frontend_ip_configuration list ->
  string ->
  unit
