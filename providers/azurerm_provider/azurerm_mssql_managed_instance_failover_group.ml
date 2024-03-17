(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_managed_instance_failover_group__read_write_endpoint_failover_policy = {
  grace_minutes : float option; [@option]  (** grace_minutes *)
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_failover_group__read_write_endpoint_failover_policy *)

type azurerm_mssql_managed_instance_failover_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_failover_group__timeouts *)

type azurerm_mssql_managed_instance_failover_group__partner_region = {
  location : string;  (** location *)
  role : string;  (** role *)
}
[@@deriving yojson_of]

type azurerm_mssql_managed_instance_failover_group = {
  location : string;  (** location *)
  managed_instance_id : string;  (** managed_instance_id *)
  name : string;  (** name *)
  partner_managed_instance_id : string;
      (** partner_managed_instance_id *)
  readonly_endpoint_failover_policy_enabled : bool option; [@option]
      (** readonly_endpoint_failover_policy_enabled *)
  read_write_endpoint_failover_policy :
    azurerm_mssql_managed_instance_failover_group__read_write_endpoint_failover_policy
    list;
  timeouts :
    azurerm_mssql_managed_instance_failover_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_failover_group *)

let azurerm_mssql_managed_instance_failover_group
    ?readonly_endpoint_failover_policy_enabled ?timeouts ~location
    ~managed_instance_id ~name ~partner_managed_instance_id
    ~read_write_endpoint_failover_policy __resource_id =
  let __resource_type =
    "azurerm_mssql_managed_instance_failover_group"
  in
  let __resource =
    {
      location;
      managed_instance_id;
      name;
      partner_managed_instance_id;
      readonly_endpoint_failover_policy_enabled;
      read_write_endpoint_failover_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_managed_instance_failover_group
       __resource);
  ()
