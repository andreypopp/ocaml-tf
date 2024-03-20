(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type load_balancer_configuration

val load_balancer_configuration :
  load_balancer_id:string prop ->
  private_ip_address:string prop ->
  probe_port:float prop ->
  sql_virtual_machine_ids:string prop list ->
  subnet_id:string prop ->
  unit ->
  load_balancer_configuration

type multi_subnet_ip_configuration

val multi_subnet_ip_configuration :
  private_ip_address:string prop ->
  sql_virtual_machine_id:string prop ->
  subnet_id:string prop ->
  unit ->
  multi_subnet_ip_configuration

type replica

val replica :
  commit:string prop ->
  failover_mode:string prop ->
  readable_secondary:string prop ->
  role:string prop ->
  sql_virtual_machine_id:string prop ->
  unit ->
  replica

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_mssql_virtual_machine_availability_group_listener

val azurerm_mssql_virtual_machine_availability_group_listener :
  ?availability_group_name:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  sql_virtual_machine_group_id:string prop ->
  load_balancer_configuration:load_balancer_configuration list ->
  multi_subnet_ip_configuration:multi_subnet_ip_configuration list ->
  replica:replica list ->
  unit ->
  azurerm_mssql_virtual_machine_availability_group_listener

val yojson_of_azurerm_mssql_virtual_machine_availability_group_listener :
  azurerm_mssql_virtual_machine_availability_group_listener -> json

(** RESOURCE REGISTRATION *)

type t = private {
  availability_group_name : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  sql_virtual_machine_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_group_name:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  sql_virtual_machine_group_id:string prop ->
  load_balancer_configuration:load_balancer_configuration list ->
  multi_subnet_ip_configuration:multi_subnet_ip_configuration list ->
  replica:replica list ->
  string ->
  t

val make :
  ?availability_group_name:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  sql_virtual_machine_group_id:string prop ->
  load_balancer_configuration:load_balancer_configuration list ->
  multi_subnet_ip_configuration:multi_subnet_ip_configuration list ->
  replica:replica list ->
  string ->
  t Tf_core.resource
