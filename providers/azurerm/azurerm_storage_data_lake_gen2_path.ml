(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ace = {
  id : string prop option; [@option]
  permissions : string prop;
  scope : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ace) -> ()

let yojson_of_ace =
  (function
   | {
       id = v_id;
       permissions = v_permissions;
       scope = v_scope;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permissions in
         ("permissions", arg) :: bnds
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
    : ace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ace

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

type azurerm_storage_data_lake_gen2_path = {
  filesystem_name : string prop;
  group : string prop option; [@option]
  id : string prop option; [@option]
  owner : string prop option; [@option]
  path : string prop;
  resource : string prop;
  storage_account_id : string prop;
  ace : ace list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_data_lake_gen2_path) -> ()

let yojson_of_azurerm_storage_data_lake_gen2_path =
  (function
   | {
       filesystem_name = v_filesystem_name;
       group = v_group;
       id = v_id;
       owner = v_owner;
       path = v_path;
       resource = v_resource;
       storage_account_id = v_storage_account_id;
       ace = v_ace;
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
         if Stdlib.( = ) [] v_ace then bnds
         else
           let arg = (yojson_of_list yojson_of_ace) v_ace in
           let bnd = "ace", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
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
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filesystem_name
         in
         ("filesystem_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_storage_data_lake_gen2_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_data_lake_gen2_path

[@@@deriving.end]

let ace ?id ?scope ~permissions ~type_ () : ace =
  { id; permissions; scope; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_data_lake_gen2_path ?group ?id ?owner ?timeouts
    ~filesystem_name ~path ~resource ~storage_account_id ~ace () :
    azurerm_storage_data_lake_gen2_path =
  {
    filesystem_name;
    group;
    id;
    owner;
    path;
    resource;
    storage_account_id;
    ace;
    timeouts;
  }

type t = {
  tf_name : string;
  filesystem_name : string prop;
  group : string prop;
  id : string prop;
  owner : string prop;
  path : string prop;
  resource : string prop;
  storage_account_id : string prop;
}

let make ?group ?id ?owner ?timeouts ~filesystem_name ~path ~resource
    ~storage_account_id ~ace __id =
  let __type = "azurerm_storage_data_lake_gen2_path" in
  let __attrs =
    ({
       tf_name = __id;
       filesystem_name = Prop.computed __type __id "filesystem_name";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       path = Prop.computed __type __id "path";
       resource = Prop.computed __type __id "resource";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_data_lake_gen2_path
        (azurerm_storage_data_lake_gen2_path ?group ?id ?owner
           ?timeouts ~filesystem_name ~path ~resource
           ~storage_account_id ~ace ());
    attrs = __attrs;
  }

let register ?tf_module ?group ?id ?owner ?timeouts ~filesystem_name
    ~path ~resource ~storage_account_id ~ace __id =
  let (r : _ Tf_core.resource) =
    make ?group ?id ?owner ?timeouts ~filesystem_name ~path ~resource
      ~storage_account_id ~ace __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
