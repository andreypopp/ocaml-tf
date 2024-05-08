(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_rule = {
  access : string prop;
  anonymous_gid : float prop option; [@option]
  anonymous_uid : float prop option; [@option]
  filter : string prop option; [@option]
  root_squash_enabled : bool prop option; [@option]
  scope : string prop;
  submount_access_enabled : bool prop option; [@option]
  suid_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_rule) -> ()

let yojson_of_access_rule =
  (function
   | {
       access = v_access;
       anonymous_gid = v_anonymous_gid;
       anonymous_uid = v_anonymous_uid;
       filter = v_filter;
       root_squash_enabled = v_root_squash_enabled;
       scope = v_scope;
       submount_access_enabled = v_submount_access_enabled;
       suid_enabled = v_suid_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_suid_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suid_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_submount_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "submount_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         match v_root_squash_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "root_squash_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anonymous_uid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "anonymous_uid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anonymous_gid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "anonymous_gid", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access in
         ("access", arg) :: bnds
       in
       `Assoc bnds
    : access_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_rule

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

type azurerm_hpc_cache_access_policy = {
  hpc_cache_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  access_rule : access_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_hpc_cache_access_policy) -> ()

let yojson_of_azurerm_hpc_cache_access_policy =
  (function
   | {
       hpc_cache_id = v_hpc_cache_id;
       id = v_id;
       name = v_name;
       access_rule = v_access_rule;
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
         if Stdlib.( = ) [] v_access_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_rule) v_access_rule
           in
           let bnd = "access_rule", arg in
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
         let arg = yojson_of_prop yojson_of_string v_hpc_cache_id in
         ("hpc_cache_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_hpc_cache_access_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_hpc_cache_access_policy

[@@@deriving.end]

let access_rule ?anonymous_gid ?anonymous_uid ?filter
    ?root_squash_enabled ?submount_access_enabled ?suid_enabled
    ~access ~scope () : access_rule =
  {
    access;
    anonymous_gid;
    anonymous_uid;
    filter;
    root_squash_enabled;
    scope;
    submount_access_enabled;
    suid_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_hpc_cache_access_policy ?id ?timeouts ~hpc_cache_id ~name
    ~access_rule () : azurerm_hpc_cache_access_policy =
  { hpc_cache_id; id; name; access_rule; timeouts }

type t = {
  tf_name : string;
  hpc_cache_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~hpc_cache_id ~name ~access_rule __id =
  let __type = "azurerm_hpc_cache_access_policy" in
  let __attrs =
    ({
       tf_name = __id;
       hpc_cache_id = Prop.computed __type __id "hpc_cache_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_hpc_cache_access_policy
        (azurerm_hpc_cache_access_policy ?id ?timeouts ~hpc_cache_id
           ~name ~access_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~hpc_cache_id ~name
    ~access_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~hpc_cache_id ~name ~access_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
