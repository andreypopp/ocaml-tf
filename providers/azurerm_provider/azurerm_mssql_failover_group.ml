(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_failover_group__partner_server = {
  id : string;  (** id *)
  location : string;  (** location *)
  role : string;  (** role *)
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group__partner_server *)

type azurerm_mssql_failover_group__read_write_endpoint_failover_policy = {
  grace_minutes : float option; [@option]  (** grace_minutes *)
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group__read_write_endpoint_failover_policy *)

type azurerm_mssql_failover_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group__timeouts *)

type azurerm_mssql_failover_group = {
  databases : string list option; [@option]  (** databases *)
  name : string;  (** name *)
  server_id : string;  (** server_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  partner_server : azurerm_mssql_failover_group__partner_server list;
  read_write_endpoint_failover_policy :
    azurerm_mssql_failover_group__read_write_endpoint_failover_policy
    list;
  timeouts : azurerm_mssql_failover_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group *)

let azurerm_mssql_failover_group ?databases ?tags ?timeouts ~name
    ~server_id ~partner_server ~read_write_endpoint_failover_policy
    __resource_id =
  let __resource_type = "azurerm_mssql_failover_group" in
  let __resource =
    {
      databases;
      name;
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
