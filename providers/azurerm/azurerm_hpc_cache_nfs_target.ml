(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type namespace_junction = {
  access_policy_name : string prop option; [@option]
  namespace_path : string prop;
  nfs_export : string prop;
  target_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : namespace_junction) -> ()

let yojson_of_namespace_junction =
  (function
   | {
       access_policy_name = v_access_policy_name;
       namespace_path = v_namespace_path;
       nfs_export = v_nfs_export;
       target_path = v_target_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_nfs_export in
         ("nfs_export", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_path
         in
         ("namespace_path", arg) :: bnds
       in
       let bnds =
         match v_access_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_policy_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : namespace_junction -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_namespace_junction

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

type azurerm_hpc_cache_nfs_target = {
  cache_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  target_host_name : string prop;
  usage_model : string prop;
  verification_timer_in_seconds : float prop option; [@option]
  write_back_timer_in_seconds : float prop option; [@option]
  namespace_junction : namespace_junction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_hpc_cache_nfs_target) -> ()

let yojson_of_azurerm_hpc_cache_nfs_target =
  (function
   | {
       cache_name = v_cache_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       target_host_name = v_target_host_name;
       usage_model = v_usage_model;
       verification_timer_in_seconds =
         v_verification_timer_in_seconds;
       write_back_timer_in_seconds = v_write_back_timer_in_seconds;
       namespace_junction = v_namespace_junction;
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
         if Stdlib.( = ) [] v_namespace_junction then bnds
         else
           let arg =
             (yojson_of_list yojson_of_namespace_junction)
               v_namespace_junction
           in
           let bnd = "namespace_junction", arg in
           bnd :: bnds
       in
       let bnds =
         match v_write_back_timer_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "write_back_timer_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_verification_timer_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "verification_timer_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_usage_model in
         ("usage_model", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_host_name
         in
         ("target_host_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cache_name in
         ("cache_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_hpc_cache_nfs_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_hpc_cache_nfs_target

[@@@deriving.end]

let namespace_junction ?access_policy_name ?target_path
    ~namespace_path ~nfs_export () : namespace_junction =
  { access_policy_name; namespace_path; nfs_export; target_path }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_hpc_cache_nfs_target ?id ?verification_timer_in_seconds
    ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
    ~resource_group_name ~target_host_name ~usage_model
    ~namespace_junction () : azurerm_hpc_cache_nfs_target =
  {
    cache_name;
    id;
    name;
    resource_group_name;
    target_host_name;
    usage_model;
    verification_timer_in_seconds;
    write_back_timer_in_seconds;
    namespace_junction;
    timeouts;
  }

type t = {
  tf_name : string;
  cache_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  target_host_name : string prop;
  usage_model : string prop;
  verification_timer_in_seconds : float prop;
  write_back_timer_in_seconds : float prop;
}

let make ?id ?verification_timer_in_seconds
    ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
    ~resource_group_name ~target_host_name ~usage_model
    ~namespace_junction __id =
  let __type = "azurerm_hpc_cache_nfs_target" in
  let __attrs =
    ({
       tf_name = __id;
       cache_name = Prop.computed __type __id "cache_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       target_host_name =
         Prop.computed __type __id "target_host_name";
       usage_model = Prop.computed __type __id "usage_model";
       verification_timer_in_seconds =
         Prop.computed __type __id "verification_timer_in_seconds";
       write_back_timer_in_seconds =
         Prop.computed __type __id "write_back_timer_in_seconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_hpc_cache_nfs_target
        (azurerm_hpc_cache_nfs_target ?id
           ?verification_timer_in_seconds
           ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
           ~resource_group_name ~target_host_name ~usage_model
           ~namespace_junction ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?verification_timer_in_seconds
    ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
    ~resource_group_name ~target_host_name ~usage_model
    ~namespace_junction __id =
  let (r : _ Tf_core.resource) =
    make ?id ?verification_timer_in_seconds
      ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
      ~resource_group_name ~target_host_name ~usage_model
      ~namespace_junction __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
