(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_failover_group__partner_servers = {
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  role : string prop;  (** role *)
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group__partner_servers *)

type azurerm_sql_failover_group__read_write_endpoint_failover_policy = {
  grace_minutes : float prop option; [@option]  (** grace_minutes *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group__read_write_endpoint_failover_policy *)

type azurerm_sql_failover_group__readonly_endpoint_failover_policy = {
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group__readonly_endpoint_failover_policy *)

type azurerm_sql_failover_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group__timeouts *)

type azurerm_sql_failover_group = {
  databases : string prop list option; [@option]  (** databases *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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

type t = {
  databases : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  role : string prop;
  server_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_sql_failover_group ?databases ?id ?tags ?timeouts ~name
    ~resource_group_name ~server_name ~partner_servers
    ~read_write_endpoint_failover_policy
    ~readonly_endpoint_failover_policy __resource_id =
  let __resource_type = "azurerm_sql_failover_group" in
  let __resource =
    ({
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
      : azurerm_sql_failover_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_failover_group __resource);
  let __resource_attributes =
    ({
       databases =
         Prop.computed __resource_type __resource_id "databases";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       role = Prop.computed __resource_type __resource_id "role";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
