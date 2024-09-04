(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type restore = {
  point_in_time : string prop;
  source_database_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore) -> ()

let yojson_of_restore =
  (function
   | {
       point_in_time = v_point_in_time;
       source_database_id = v_source_database_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_database_id
         in
         ("source_database_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_point_in_time in
         ("point_in_time", arg) :: bnds
       in
       `Assoc bnds
    : restore -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore

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

type azurerm_synapse_sql_pool = {
  collation : string prop option; [@option]
  create_mode : string prop option; [@option]
  data_encrypted : bool prop option; [@option]
  geo_backup_policy_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  recovery_database_id : string prop option; [@option]
  sku_name : string prop;
  storage_account_type : string prop option; [@option]
  synapse_workspace_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  restore : restore list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_sql_pool) -> ()

let yojson_of_azurerm_synapse_sql_pool =
  (function
   | {
       collation = v_collation;
       create_mode = v_create_mode;
       data_encrypted = v_data_encrypted;
       geo_backup_policy_enabled = v_geo_backup_policy_enabled;
       id = v_id;
       name = v_name;
       recovery_database_id = v_recovery_database_id;
       sku_name = v_sku_name;
       storage_account_type = v_storage_account_type;
       synapse_workspace_id = v_synapse_workspace_id;
       tags = v_tags;
       restore = v_restore;
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
         if Stdlib.( = ) [] v_restore then bnds
         else
           let arg = (yojson_of_list yojson_of_restore) v_restore in
           let bnd = "restore", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_synapse_workspace_id
         in
         ("synapse_workspace_id", arg) :: bnds
       in
       let bnds =
         match v_storage_account_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         match v_recovery_database_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recovery_database_id", arg in
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
         match v_geo_backup_policy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "geo_backup_policy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_synapse_sql_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_sql_pool

[@@@deriving.end]

let restore ~point_in_time ~source_database_id () : restore =
  { point_in_time; source_database_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_sql_pool ?collation ?create_mode ?data_encrypted
    ?geo_backup_policy_enabled ?id ?recovery_database_id
    ?storage_account_type ?tags ?(restore = []) ?timeouts ~name
    ~sku_name ~synapse_workspace_id () : azurerm_synapse_sql_pool =
  {
    collation;
    create_mode;
    data_encrypted;
    geo_backup_policy_enabled;
    id;
    name;
    recovery_database_id;
    sku_name;
    storage_account_type;
    synapse_workspace_id;
    tags;
    restore;
    timeouts;
  }

type t = {
  tf_name : string;
  collation : string prop;
  create_mode : string prop;
  data_encrypted : bool prop;
  geo_backup_policy_enabled : bool prop;
  id : string prop;
  name : string prop;
  recovery_database_id : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  synapse_workspace_id : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?collation ?create_mode ?data_encrypted
    ?geo_backup_policy_enabled ?id ?recovery_database_id
    ?storage_account_type ?tags ?(restore = []) ?timeouts ~name
    ~sku_name ~synapse_workspace_id __id =
  let __type = "azurerm_synapse_sql_pool" in
  let __attrs =
    ({
       tf_name = __id;
       collation = Prop.computed __type __id "collation";
       create_mode = Prop.computed __type __id "create_mode";
       data_encrypted = Prop.computed __type __id "data_encrypted";
       geo_backup_policy_enabled =
         Prop.computed __type __id "geo_backup_policy_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_database_id =
         Prop.computed __type __id "recovery_database_id";
       sku_name = Prop.computed __type __id "sku_name";
       storage_account_type =
         Prop.computed __type __id "storage_account_type";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_sql_pool
        (azurerm_synapse_sql_pool ?collation ?create_mode
           ?data_encrypted ?geo_backup_policy_enabled ?id
           ?recovery_database_id ?storage_account_type ?tags ~restore
           ?timeouts ~name ~sku_name ~synapse_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?collation ?create_mode ?data_encrypted
    ?geo_backup_policy_enabled ?id ?recovery_database_id
    ?storage_account_type ?tags ?(restore = []) ?timeouts ~name
    ~sku_name ~synapse_workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?collation ?create_mode ?data_encrypted
      ?geo_backup_policy_enabled ?id ?recovery_database_id
      ?storage_account_type ?tags ~restore ?timeouts ~name ~sku_name
      ~synapse_workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
