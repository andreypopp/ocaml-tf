(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_rule__timeouts
type azurerm_lb_rule

val azurerm_lb_rule :
  ?backend_address_pool_ids:string prop list ->
  ?disable_outbound_snat:bool prop ->
  ?enable_floating_ip:bool prop ->
  ?enable_tcp_reset:bool prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?load_distribution:string prop ->
  ?probe_id:string prop ->
  ?timeouts:azurerm_lb_rule__timeouts ->
  backend_port:float prop ->
  frontend_ip_configuration_name:string prop ->
  frontend_port:float prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  string ->
  unit
