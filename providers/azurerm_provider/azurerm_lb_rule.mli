(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_rule__timeouts
type azurerm_lb_rule

val azurerm_lb_rule :
  ?backend_address_pool_ids:string list ->
  ?disable_outbound_snat:bool ->
  ?enable_floating_ip:bool ->
  ?enable_tcp_reset:bool ->
  ?id:string ->
  ?idle_timeout_in_minutes:float ->
  ?load_distribution:string ->
  ?probe_id:string ->
  ?timeouts:azurerm_lb_rule__timeouts ->
  backend_port:float ->
  frontend_ip_configuration_name:string ->
  frontend_port:float ->
  loadbalancer_id:string ->
  name:string ->
  protocol:string ->
  string ->
  unit
