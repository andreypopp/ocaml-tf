(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_virtual_machine_availability_group_listener__load_balancer_configuration = {
  load_balancer_id : string;  (** load_balancer_id *)
  private_ip_address : string;  (** private_ip_address *)
  probe_port : float;  (** probe_port *)
  sql_virtual_machine_ids : string list;
      (** sql_virtual_machine_ids *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_availability_group_listener__load_balancer_configuration *)

type azurerm_mssql_virtual_machine_availability_group_listener__multi_subnet_ip_configuration = {
  private_ip_address : string;  (** private_ip_address *)
  sql_virtual_machine_id : string;  (** sql_virtual_machine_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_availability_group_listener__multi_subnet_ip_configuration *)

type azurerm_mssql_virtual_machine_availability_group_listener__replica = {
  commit : string;  (** commit *)
  failover_mode : string;  (** failover_mode *)
  readable_secondary : string;  (** readable_secondary *)
  role : string;  (** role *)
  sql_virtual_machine_id : string;  (** sql_virtual_machine_id *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_availability_group_listener__replica *)

type azurerm_mssql_virtual_machine_availability_group_listener__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_availability_group_listener__timeouts *)

type azurerm_mssql_virtual_machine_availability_group_listener = {
  availability_group_name : string option; [@option]
      (** availability_group_name *)
  name : string;  (** name *)
  port : float option; [@option]  (** port *)
  sql_virtual_machine_group_id : string;
      (** sql_virtual_machine_group_id *)
  load_balancer_configuration :
    azurerm_mssql_virtual_machine_availability_group_listener__load_balancer_configuration
    list;
  multi_subnet_ip_configuration :
    azurerm_mssql_virtual_machine_availability_group_listener__multi_subnet_ip_configuration
    list;
  replica :
    azurerm_mssql_virtual_machine_availability_group_listener__replica
    list;
  timeouts :
    azurerm_mssql_virtual_machine_availability_group_listener__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_availability_group_listener *)

let azurerm_mssql_virtual_machine_availability_group_listener
    ?availability_group_name ?port ?timeouts ~name
    ~sql_virtual_machine_group_id ~load_balancer_configuration
    ~multi_subnet_ip_configuration ~replica __resource_id =
  let __resource_type =
    "azurerm_mssql_virtual_machine_availability_group_listener"
  in
  let __resource =
    {
      availability_group_name;
      name;
      port;
      sql_virtual_machine_group_id;
      load_balancer_configuration;
      multi_subnet_ip_configuration;
      replica;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_virtual_machine_availability_group_listener
       __resource);
  ()
