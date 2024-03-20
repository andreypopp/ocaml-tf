(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connection_pool_config = {
  connection_borrow_timeout : float prop option; [@option]
  init_query : string prop option; [@option]
  max_connections_percent : float prop option; [@option]
  max_idle_connections_percent : float prop option; [@option]
  session_pinning_filters : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_pool_config) -> ()

let yojson_of_connection_pool_config =
  (function
   | {
       connection_borrow_timeout = v_connection_borrow_timeout;
       init_query = v_init_query;
       max_connections_percent = v_max_connections_percent;
       max_idle_connections_percent = v_max_idle_connections_percent;
       session_pinning_filters = v_session_pinning_filters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_session_pinning_filters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "session_pinning_filters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_idle_connections_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_idle_connections_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_connections_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_connections_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_init_query with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "init_query", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_borrow_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_borrow_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connection_pool_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_pool_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
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

type aws_db_proxy_default_target_group = {
  db_proxy_name : string prop;
  id : string prop option; [@option]
  connection_pool_config : connection_pool_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_proxy_default_target_group) -> ()

let yojson_of_aws_db_proxy_default_target_group =
  (function
   | {
       db_proxy_name = v_db_proxy_name;
       id = v_id;
       connection_pool_config = v_connection_pool_config;
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
           yojson_of_list yojson_of_connection_pool_config
             v_connection_pool_config
         in
         ("connection_pool_config", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_db_proxy_name in
         ("db_proxy_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_db_proxy_default_target_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_proxy_default_target_group

[@@@deriving.end]

let connection_pool_config ?connection_borrow_timeout ?init_query
    ?max_connections_percent ?max_idle_connections_percent
    ?session_pinning_filters () : connection_pool_config =
  {
    connection_borrow_timeout;
    init_query;
    max_connections_percent;
    max_idle_connections_percent;
    session_pinning_filters;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_db_proxy_default_target_group ?id ?timeouts ~db_proxy_name
    ~connection_pool_config () : aws_db_proxy_default_target_group =
  { db_proxy_name; id; connection_pool_config; timeouts }

type t = {
  arn : string prop;
  db_proxy_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~db_proxy_name ~connection_pool_config __id =
  let __type = "aws_db_proxy_default_target_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       db_proxy_name = Prop.computed __type __id "db_proxy_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_proxy_default_target_group
        (aws_db_proxy_default_target_group ?id ?timeouts
           ~db_proxy_name ~connection_pool_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~db_proxy_name
    ~connection_pool_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~db_proxy_name ~connection_pool_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
