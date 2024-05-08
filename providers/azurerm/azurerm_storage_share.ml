(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type acl__access_policy = {
  expiry : string prop option; [@option]
  permissions : string prop;
  start : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : acl__access_policy) -> ()

let yojson_of_acl__access_policy =
  (function
   | {
       expiry = v_expiry;
       permissions = v_permissions;
       start = v_start;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permissions in
         ("permissions", arg) :: bnds
       in
       let bnds =
         match v_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiry", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : acl__access_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_acl__access_policy

[@@@deriving.end]

type acl = {
  id : string prop;
  access_policy : acl__access_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : acl) -> ()

let yojson_of_acl =
  (function
   | { id = v_id; access_policy = v_access_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_access_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_acl__access_policy)
               v_access_policy
           in
           let bnd = "access_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_acl

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

type azurerm_storage_share = {
  access_tier : string prop option; [@option]
  enabled_protocol : string prop option; [@option]
  id : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  quota : float prop;
  storage_account_name : string prop;
  acl : acl list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_share) -> ()

let yojson_of_azurerm_storage_share =
  (function
   | {
       access_tier = v_access_tier;
       enabled_protocol = v_enabled_protocol;
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       quota = v_quota;
       storage_account_name = v_storage_account_name;
       acl = v_acl;
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
         if Stdlib.( = ) [] v_acl then bnds
         else
           let arg = (yojson_of_list yojson_of_acl) v_acl in
           let bnd = "acl", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_quota in
         ("quota", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
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
             let bnd = "metadata", arg in
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
         match v_enabled_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enabled_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_tier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_share -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_share

[@@@deriving.end]

let acl__access_policy ?expiry ?start ~permissions () :
    acl__access_policy =
  { expiry; permissions; start }

let acl ?(access_policy = []) ~id () : acl = { id; access_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_share ?access_tier ?enabled_protocol ?id
    ?metadata ?timeouts ~name ~quota ~storage_account_name ~acl () :
    azurerm_storage_share =
  {
    access_tier;
    enabled_protocol;
    id;
    metadata;
    name;
    quota;
    storage_account_name;
    acl;
    timeouts;
  }

type t = {
  tf_name : string;
  access_tier : string prop;
  enabled_protocol : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  quota : float prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
  url : string prop;
}

let make ?access_tier ?enabled_protocol ?id ?metadata ?timeouts ~name
    ~quota ~storage_account_name ~acl __id =
  let __type = "azurerm_storage_share" in
  let __attrs =
    ({
       tf_name = __id;
       access_tier = Prop.computed __type __id "access_tier";
       enabled_protocol =
         Prop.computed __type __id "enabled_protocol";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       quota = Prop.computed __type __id "quota";
       resource_manager_id =
         Prop.computed __type __id "resource_manager_id";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_share
        (azurerm_storage_share ?access_tier ?enabled_protocol ?id
           ?metadata ?timeouts ~name ~quota ~storage_account_name
           ~acl ());
    attrs = __attrs;
  }

let register ?tf_module ?access_tier ?enabled_protocol ?id ?metadata
    ?timeouts ~name ~quota ~storage_account_name ~acl __id =
  let (r : _ Tf_core.resource) =
    make ?access_tier ?enabled_protocol ?id ?metadata ?timeouts ~name
      ~quota ~storage_account_name ~acl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
