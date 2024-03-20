(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?databases ?id ?tags ?timeouts ~name ~resource_group_name
    ~server_name ~partner_servers
    ~read_write_endpoint_failover_policy
    ~readonly_endpoint_failover_policy __id =
  let __type = "azurerm_sql_failover_group" in
  let __attrs =
    ({
       databases = Prop.computed __type __id "databases";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role = Prop.computed __type __id "role";
       server_name = Prop.computed __type __id "server_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_failover_group
        (azurerm_sql_failover_group ?databases ?id ?tags ?timeouts
           ~name ~resource_group_name ~server_name ~partner_servers
           ~read_write_endpoint_failover_policy
           ~readonly_endpoint_failover_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?databases ?id ?tags ?timeouts ~name
    ~resource_group_name ~server_name ~partner_servers
    ~read_write_endpoint_failover_policy
    ~readonly_endpoint_failover_policy __id =
  let (r : _ Tf_core.resource) =
    make ?databases ?id ?tags ?timeouts ~name ~resource_group_name
      ~server_name ~partner_servers
      ~read_write_endpoint_failover_policy
      ~readonly_endpoint_failover_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
