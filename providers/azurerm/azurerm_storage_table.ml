(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type acl__access_policy = {
  expiry : string prop;
  permissions : string prop;
  start : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permissions in
         ("permissions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expiry in
         ("expiry", arg) :: bnds
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

type azurerm_storage_table = {
  id : string prop option; [@option]
  name : string prop;
  storage_account_name : string prop;
  acl : acl list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_table) -> ()

let yojson_of_azurerm_storage_table =
  (function
   | {
       id = v_id;
       name = v_name;
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
       `Assoc bnds
    : azurerm_storage_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_table

[@@@deriving.end]

let acl__access_policy ~expiry ~permissions ~start () :
    acl__access_policy =
  { expiry; permissions; start }

let acl ?(access_policy = []) ~id () : acl = { id; access_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_table ?id ?timeouts ~name ~storage_account_name
    ~acl () : azurerm_storage_table =
  { id; name; storage_account_name; acl; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  storage_account_name : string prop;
}

let make ?id ?timeouts ~name ~storage_account_name ~acl __id =
  let __type = "azurerm_storage_table" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_table
        (azurerm_storage_table ?id ?timeouts ~name
           ~storage_account_name ~acl ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~storage_account_name
    ~acl __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~storage_account_name ~acl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
