(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_nat_pool__timeouts
type azurerm_lb_nat_pool

val azurerm_lb_nat_pool :
  ?floating_ip_enabled:bool ->
  ?id:string ->
  ?idle_timeout_in_minutes:float ->
  ?tcp_reset_enabled:bool ->
  ?timeouts:azurerm_lb_nat_pool__timeouts ->
  backend_port:float ->
  frontend_ip_configuration_name:string ->
  frontend_port_end:float ->
  frontend_port_start:float ->
  loadbalancer_id:string ->
  name:string ->
  protocol:string ->
  resource_group_name:string ->
  string ->
  unit
