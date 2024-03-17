(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_failover_group__partner_servers = {
  id : string;  (** id *)
  location : string;  (** location *)
  role : string;  (** role *)
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group__partner_servers *)

type azurerm_sql_failover_group__read_write_endpoint_failover_policy = {
  grace_minutes : float option; [@option]  (** grace_minutes *)
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group__read_write_endpoint_failover_policy *)

type azurerm_sql_failover_group__readonly_endpoint_failover_policy = {
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group__readonly_endpoint_failover_policy *)

type azurerm_sql_failover_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group__timeouts *)

type azurerm_sql_failover_group = {
  databases : string list option; [@option]  (** databases *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  partner_servers : azurerm_sql_failover_group__partner_servers list;
  read_write_endpoint_failover_policy :
    azurerm_sql_failover_group__read_write_endpoint_failover_policy
    list;
  readonly_endpoint_failover_policy :
    azurerm_sql_failover_group__readonly_endpoint_failover_policy
    list;
  timeouts : azurerm_sql_failover_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group *)

let azurerm_sql_failover_group ?databases ?id ?tags ?timeouts ~name
    ~resource_group_name ~server_name ~partner_servers
    ~read_write_endpoint_failover_policy
    ~readonly_endpoint_failover_policy __resource_id =
  let __resource_type = "azurerm_sql_failover_group" in
  let __resource =
    {
      databases;
      id;
      name;
      resource_group_name;
      server_name;
      tags;
      partner_servers;
      read_write_endpoint_failover_policy;
      readonly_endpoint_failover_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_failover_group __resource);
  ()
