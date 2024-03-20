(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type partner_server = { id : string prop  (** id *) }
[@@deriving yojson_of]
(** partner_server *)

type read_write_endpoint_failover_policy = {
  grace_minutes : float prop option; [@option]  (** grace_minutes *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** read_write_endpoint_failover_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_failover_group = {
  databases : string prop list option; [@option]  (** databases *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  readonly_endpoint_failover_policy_enabled : bool prop option;
      [@option]
      (** readonly_endpoint_failover_policy_enabled *)
  server_id : string prop;  (** server_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  partner_server : partner_server list;
  read_write_endpoint_failover_policy :
    read_write_endpoint_failover_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_failover_group *)

let partner_server ~id () : partner_server = { id }

let read_write_endpoint_failover_policy ?grace_minutes ~mode () :
    read_write_endpoint_failover_policy =
  { grace_minutes; mode }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_failover_group ?databases ?id
    ?readonly_endpoint_failover_policy_enabled ?tags ?timeouts ~name
    ~server_id ~partner_server ~read_write_endpoint_failover_policy
    () : azurerm_mssql_failover_group =
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

type t = {
  databases : string list prop;
  id : string prop;
  name : string prop;
  readonly_endpoint_failover_policy_enabled : bool prop;
  server_id : string prop;
  tags : (string * string) list prop;
}

let make ?databases ?id ?readonly_endpoint_failover_policy_enabled
    ?tags ?timeouts ~name ~server_id ~partner_server
    ~read_write_endpoint_failover_policy __id =
  let __type = "azurerm_mssql_failover_group" in
  let __attrs =
    ({
       databases = Prop.computed __type __id "databases";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       readonly_endpoint_failover_policy_enabled =
         Prop.computed __type __id
           "readonly_endpoint_failover_policy_enabled";
       server_id = Prop.computed __type __id "server_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_failover_group
        (azurerm_mssql_failover_group ?databases ?id
           ?readonly_endpoint_failover_policy_enabled ?tags ?timeouts
           ~name ~server_id ~partner_server
           ~read_write_endpoint_failover_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?databases ?id
    ?readonly_endpoint_failover_policy_enabled ?tags ?timeouts ~name
    ~server_id ~partner_server ~read_write_endpoint_failover_policy
    __id =
  let (r : _ Tf_core.resource) =
    make ?databases ?id ?readonly_endpoint_failover_policy_enabled
      ?tags ?timeouts ~name ~server_id ~partner_server
      ~read_write_endpoint_failover_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
