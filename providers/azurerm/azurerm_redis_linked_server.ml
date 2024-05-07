(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_redis_linked_server = {
  id : string prop option; [@option]
  linked_redis_cache_id : string prop;
  linked_redis_cache_location : string prop;
  resource_group_name : string prop;
  server_role : string prop;
  target_redis_cache_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_redis_linked_server) -> ()

let yojson_of_azurerm_redis_linked_server =
  (function
   | {
       id = v_id;
       linked_redis_cache_id = v_linked_redis_cache_id;
       linked_redis_cache_location = v_linked_redis_cache_location;
       resource_group_name = v_resource_group_name;
       server_role = v_server_role;
       target_redis_cache_name = v_target_redis_cache_name;
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
           yojson_of_prop yojson_of_string v_target_redis_cache_name
         in
         ("target_redis_cache_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_role in
         ("server_role", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_linked_redis_cache_location
         in
         ("linked_redis_cache_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linked_redis_cache_id
         in
         ("linked_redis_cache_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_redis_linked_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_redis_linked_server

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_redis_linked_server ?id ?timeouts ~linked_redis_cache_id
    ~linked_redis_cache_location ~resource_group_name ~server_role
    ~target_redis_cache_name () : azurerm_redis_linked_server =
  {
    id;
    linked_redis_cache_id;
    linked_redis_cache_location;
    resource_group_name;
    server_role;
    target_redis_cache_name;
    timeouts;
  }

type t = {
  tf_name : string;
  geo_replicated_primary_host_name : string prop;
  id : string prop;
  linked_redis_cache_id : string prop;
  linked_redis_cache_location : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_role : string prop;
  target_redis_cache_name : string prop;
}

let make ?id ?timeouts ~linked_redis_cache_id
    ~linked_redis_cache_location ~resource_group_name ~server_role
    ~target_redis_cache_name __id =
  let __type = "azurerm_redis_linked_server" in
  let __attrs =
    ({
       tf_name = __id;
       geo_replicated_primary_host_name =
         Prop.computed __type __id "geo_replicated_primary_host_name";
       id = Prop.computed __type __id "id";
       linked_redis_cache_id =
         Prop.computed __type __id "linked_redis_cache_id";
       linked_redis_cache_location =
         Prop.computed __type __id "linked_redis_cache_location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_role = Prop.computed __type __id "server_role";
       target_redis_cache_name =
         Prop.computed __type __id "target_redis_cache_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_redis_linked_server
        (azurerm_redis_linked_server ?id ?timeouts
           ~linked_redis_cache_id ~linked_redis_cache_location
           ~resource_group_name ~server_role ~target_redis_cache_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~linked_redis_cache_id
    ~linked_redis_cache_location ~resource_group_name ~server_role
    ~target_redis_cache_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~linked_redis_cache_id
      ~linked_redis_cache_location ~resource_group_name ~server_role
      ~target_redis_cache_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
