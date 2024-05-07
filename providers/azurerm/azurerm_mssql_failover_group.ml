(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type partner_server = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : partner_server) -> ()

let yojson_of_partner_server =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : partner_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partner_server

[@@@deriving.end]

type read_write_endpoint_failover_policy = {
  grace_minutes : float prop option; [@option]
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : read_write_endpoint_failover_policy) -> ()

let yojson_of_read_write_endpoint_failover_policy =
  (function
   | { grace_minutes = v_grace_minutes; mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_grace_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "grace_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : read_write_endpoint_failover_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_read_write_endpoint_failover_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_mssql_failover_group = {
  databases : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  readonly_endpoint_failover_policy_enabled : bool prop option;
      [@option]
  server_id : string prop;
  tags : (string * string prop) list option; [@option]
  partner_server : partner_server list;
  read_write_endpoint_failover_policy :
    read_write_endpoint_failover_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_failover_group) -> ()

let yojson_of_azurerm_mssql_failover_group =
  (function
   | {
       databases = v_databases;
       id = v_id;
       name = v_name;
       readonly_endpoint_failover_policy_enabled =
         v_readonly_endpoint_failover_policy_enabled;
       server_id = v_server_id;
       tags = v_tags;
       partner_server = v_partner_server;
       read_write_endpoint_failover_policy =
         v_read_write_endpoint_failover_policy;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_read_write_endpoint_failover_policy
             v_read_write_endpoint_failover_policy
         in
         ("read_write_endpoint_failover_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_partner_server v_partner_server
         in
         ("partner_server", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         match v_readonly_endpoint_failover_policy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "readonly_endpoint_failover_policy_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_databases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "databases", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_failover_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_failover_group

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
