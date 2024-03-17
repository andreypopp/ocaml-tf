(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_failover_group__partner_server = {
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  role : string prop;  (** role *)
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group__partner_server *)

type azurerm_mssql_failover_group__read_write_endpoint_failover_policy = {
  grace_minutes : float prop option; [@option]  (** grace_minutes *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group__read_write_endpoint_failover_policy *)

type azurerm_mssql_failover_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group__timeouts *)

type azurerm_mssql_failover_group = {
  databases : string prop list option; [@option]  (** databases *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  readonly_endpoint_failover_policy_enabled : bool prop option;
      [@option]
      (** readonly_endpoint_failover_policy_enabled *)
  server_id : string prop;  (** server_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  partner_server : azurerm_mssql_failover_group__partner_server list;
  read_write_endpoint_failover_policy :
    azurerm_mssql_failover_group__read_write_endpoint_failover_policy
    list;
  timeouts : azurerm_mssql_failover_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group *)

let azurerm_mssql_failover_group ?databases ?id
    ?readonly_endpoint_failover_policy_enabled ?tags ?timeouts ~name
    ~server_id ~partner_server ~read_write_endpoint_failover_policy
    __resource_id =
  let __resource_type = "azurerm_mssql_failover_group" in
  let __resource =
    {
      databases;
      id;
      name;
      readonly_endpoint_failover_policy_enabled;
      server_id;
      tags;
      partner_server;
      read_write_endpoint_failover_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_failover_group __resource);
  ()
