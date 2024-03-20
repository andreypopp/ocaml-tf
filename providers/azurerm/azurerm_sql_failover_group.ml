(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type partner_servers = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : partner_servers) -> ()

let yojson_of_partner_servers =
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
    : partner_servers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partner_servers

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

type readonly_endpoint_failover_policy = { mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : readonly_endpoint_failover_policy) -> ()

let yojson_of_readonly_endpoint_failover_policy =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : readonly_endpoint_failover_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_readonly_endpoint_failover_policy

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

type azurerm_sql_failover_group = {
  databases : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string prop) list option; [@option]
  partner_servers : partner_servers list;
  read_write_endpoint_failover_policy :
    read_write_endpoint_failover_policy list;
  readonly_endpoint_failover_policy :
    readonly_endpoint_failover_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sql_failover_group) -> ()

let yojson_of_azurerm_sql_failover_group =
  (function
   | {
       databases = v_databases;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       server_name = v_server_name;
       tags = v_tags;
       partner_servers = v_partner_servers;
       read_write_endpoint_failover_policy =
         v_read_write_endpoint_failover_policy;
       readonly_endpoint_failover_policy =
         v_readonly_endpoint_failover_policy;
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
           yojson_of_list yojson_of_readonly_endpoint_failover_policy
             v_readonly_endpoint_failover_policy
         in
         ("readonly_endpoint_failover_policy", arg) :: bnds
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
           yojson_of_list yojson_of_partner_servers v_partner_servers
         in
         ("partner_servers", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_server_name in
         ("server_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
    : azurerm_sql_failover_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sql_failover_group

[@@@deriving.end]

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
