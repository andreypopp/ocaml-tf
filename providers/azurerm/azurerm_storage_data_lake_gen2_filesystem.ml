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

type azurerm_storage_data_lake_gen2_filesystem = {
  default_encryption_scope : string prop option; [@option]
  group : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  owner : string prop option; [@option]
  properties : string prop Tf_core.assoc option; [@option]
  storage_account_id : string prop;
  ace : ace list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_data_lake_gen2_filesystem) -> ()

let yojson_of_azurerm_storage_data_lake_gen2_filesystem =
  (function
   | {
       default_encryption_scope = v_default_encryption_scope;
       group = v_group;
       id = v_id;
       name = v_name;
       owner = v_owner;
       properties = v_properties;
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
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
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
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_encryption_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_encryption_scope", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_data_lake_gen2_filesystem ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_data_lake_gen2_filesystem

[@@@deriving.end]

let ace ?id ?scope ~permissions ~type_ () : ace =
  { id; permissions; scope; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_data_lake_gen2_filesystem
    ?default_encryption_scope ?group ?id ?owner ?properties ?timeouts
    ~name ~storage_account_id ~ace () :
    azurerm_storage_data_lake_gen2_filesystem =
  {
    default_encryption_scope;
    group;
    id;
    name;
    owner;
    properties;
    storage_account_id;
    ace;
    timeouts;
  }

type t = {
  tf_name : string;
  default_encryption_scope : string prop;
  group : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  properties : string Tf_core.assoc prop;
  storage_account_id : string prop;
}

let make ?default_encryption_scope ?group ?id ?owner ?properties
    ?timeouts ~name ~storage_account_id ~ace __id =
  let __type = "azurerm_storage_data_lake_gen2_filesystem" in
  let __attrs =
    ({
       tf_name = __id;
       default_encryption_scope =
         Prop.computed __type __id "default_encryption_scope";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       properties = Prop.computed __type __id "properties";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_data_lake_gen2_filesystem
        (azurerm_storage_data_lake_gen2_filesystem
           ?default_encryption_scope ?group ?id ?owner ?properties
           ?timeouts ~name ~storage_account_id ~ace ());
    attrs = __attrs;
  }

let register ?tf_module ?default_encryption_scope ?group ?id ?owner
    ?properties ?timeouts ~name ~storage_account_id ~ace __id =
  let (r : _ Tf_core.resource) =
    make ?default_encryption_scope ?group ?id ?owner ?properties
      ?timeouts ~name ~storage_account_id ~ace __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
