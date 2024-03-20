(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type module_ = {
  args : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : module_) -> ()

let yojson_of_module_ =
  (function
   | { args = v_args; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : module_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_module_

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

type azurerm_redis_enterprise_database = {
  client_protocol : string prop option; [@option]
  cluster_id : string prop;
  clustering_policy : string prop option; [@option]
  eviction_policy : string prop option; [@option]
  id : string prop option; [@option]
  linked_database_group_nickname : string prop option; [@option]
  linked_database_id : string prop list option; [@option]
  name : string prop option; [@option]
  port : float prop option; [@option]
  resource_group_name : string prop option; [@option]
  module_ : module_ list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_redis_enterprise_database) -> ()

let yojson_of_azurerm_redis_enterprise_database =
  (function
   | {
       client_protocol = v_client_protocol;
       cluster_id = v_cluster_id;
       clustering_policy = v_clustering_policy;
       eviction_policy = v_eviction_policy;
       id = v_id;
       linked_database_group_nickname =
         v_linked_database_group_nickname;
       linked_database_id = v_linked_database_id;
       name = v_name;
       port = v_port;
       resource_group_name = v_resource_group_name;
       module_ = v_module_;
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
         let arg = yojson_of_list yojson_of_module_ v_module_ in
         ("module_", arg) :: bnds
       in
       let bnds =
         match v_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_linked_database_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "linked_database_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_linked_database_group_nickname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "linked_database_group_nickname", arg in
             bnd :: bnds
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
         match v_eviction_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eviction_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_clustering_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "clustering_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_client_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_protocol", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_redis_enterprise_database ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_redis_enterprise_database

[@@@deriving.end]

let module_ ?args ~name () : module_ = { args; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_redis_enterprise_database ?client_protocol
    ?clustering_policy ?eviction_policy ?id
    ?linked_database_group_nickname ?linked_database_id ?name ?port
    ?resource_group_name ?timeouts ~cluster_id ~module_ () :
    azurerm_redis_enterprise_database =
  {
    client_protocol;
    cluster_id;
    clustering_policy;
    eviction_policy;
    id;
    linked_database_group_nickname;
    linked_database_id;
    name;
    port;
    resource_group_name;
    module_;
    timeouts;
  }

type t = {
  client_protocol : string prop;
  cluster_id : string prop;
  clustering_policy : string prop;
  eviction_policy : string prop;
  id : string prop;
  linked_database_group_nickname : string prop;
  linked_database_id : string list prop;
  name : string prop;
  port : float prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
}

let make ?client_protocol ?clustering_policy ?eviction_policy ?id
    ?linked_database_group_nickname ?linked_database_id ?name ?port
    ?resource_group_name ?timeouts ~cluster_id ~module_ __id =
  let __type = "azurerm_redis_enterprise_database" in
  let __attrs =
    ({
       client_protocol = Prop.computed __type __id "client_protocol";
       cluster_id = Prop.computed __type __id "cluster_id";
       clustering_policy =
         Prop.computed __type __id "clustering_policy";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       id = Prop.computed __type __id "id";
       linked_database_group_nickname =
         Prop.computed __type __id "linked_database_group_nickname";
       linked_database_id =
         Prop.computed __type __id "linked_database_id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_redis_enterprise_database
        (azurerm_redis_enterprise_database ?client_protocol
           ?clustering_policy ?eviction_policy ?id
           ?linked_database_group_nickname ?linked_database_id ?name
           ?port ?resource_group_name ?timeouts ~cluster_id ~module_
           ());
    attrs = __attrs;
  }

let register ?tf_module ?client_protocol ?clustering_policy
    ?eviction_policy ?id ?linked_database_group_nickname
    ?linked_database_id ?name ?port ?resource_group_name ?timeouts
    ~cluster_id ~module_ __id =
  let (r : _ Tf_core.resource) =
    make ?client_protocol ?clustering_policy ?eviction_policy ?id
      ?linked_database_group_nickname ?linked_database_id ?name ?port
      ?resource_group_name ?timeouts ~cluster_id ~module_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
