(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type partner_servers = { id : string prop  (** id *) }
[@@deriving yojson_of]
(** partner_servers *)

type read_write_endpoint_failover_policy = {
  grace_minutes : float prop option; [@option]  (** grace_minutes *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** read_write_endpoint_failover_policy *)

type readonly_endpoint_failover_policy = {
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** readonly_endpoint_failover_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sql_failover_group = {
  databases : string prop list option; [@option]  (** databases *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  partner_servers : partner_servers list;
  read_write_endpoint_failover_policy :
    read_write_endpoint_failover_policy list;
  readonly_endpoint_failover_policy :
    readonly_endpoint_failover_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_failover_group *)

let partner_servers ~id () : partner_servers = { id }

let read_write_endpoint_failover_policy ?grace_minutes ~mode () :
    read_write_endpoint_failover_policy =
  { grace_minutes; mode }

let readonly_endpoint_failover_policy ~mode () :
    readonly_endpoint_failover_policy =
  { mode }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_failover_group ?databases ?id ?tags ?timeouts ~name
    ~resource_group_name ~server_name ~partner_servers
    ~read_write_endpoint_failover_policy
    ~readonly_endpoint_failover_policy () :
    azurerm_sql_failover_group =
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

let register ?tf_module ?databases ?id ?tags ?timeouts ~name
    ~resource_group_name ~server_name ~partner_servers
    ~read_write_endpoint_failover_policy
    ~readonly_endpoint_failover_policy __resource_id =
  let __resource_type = "azurerm_sql_failover_group" in
  let __resource =
    azurerm_sql_failover_group ?databases ?id ?tags ?timeouts ~name
      ~resource_group_name ~server_name ~partner_servers
      ~read_write_endpoint_failover_policy
      ~readonly_endpoint_failover_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
