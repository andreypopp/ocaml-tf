(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_virtual_machine_availability_group_listener__load_balancer_configuration

type azurerm_mssql_virtual_machine_availability_group_listener__multi_subnet_ip_configuration

type azurerm_mssql_virtual_machine_availability_group_listener__replica

type azurerm_mssql_virtual_machine_availability_group_listener__timeouts

type azurerm_mssql_virtual_machine_availability_group_listener

val azurerm_mssql_virtual_machine_availability_group_listener :
  ?availability_group_name:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?timeouts:
    azurerm_mssql_virtual_machine_availability_group_listener__timeouts ->
  name:string prop ->
  sql_virtual_machine_group_id:string prop ->
  load_balancer_configuration:
    azurerm_mssql_virtual_machine_availability_group_listener__load_balancer_configuration
    list ->
  multi_subnet_ip_configuration:
    azurerm_mssql_virtual_machine_availability_group_listener__multi_subnet_ip_configuration
    list ->
  replica:
    azurerm_mssql_virtual_machine_availability_group_listener__replica
    list ->
  string ->
  unit
