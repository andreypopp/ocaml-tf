(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_key = {
  key_url : string prop;
  source_vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_key) -> ()

let yojson_of_encryption_key =
  (function
   | { key_url = v_key_url; source_vault_id = v_source_vault_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_vault_id
         in
         ("source_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_url in
         ("key_url", arg) :: bnds
       in
       `Assoc bnds
    : encryption_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_key

[@@@deriving.end]

type hsm_setting = {
  container_id : string prop;
  import_prefix : string prop option; [@option]
  logging_container_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hsm_setting) -> ()

let yojson_of_hsm_setting =
  (function
   | {
       container_id = v_container_id;
       import_prefix = v_import_prefix;
       logging_container_id = v_logging_container_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logging_container_id
         in
         ("logging_container_id", arg) :: bnds
       in
       let bnds =
         match v_import_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "import_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_container_id in
         ("container_id", arg) :: bnds
       in
       `Assoc bnds
    : hsm_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hsm_setting

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if [] = v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type maintenance_window = {
  day_of_week : string prop;
  time_of_day_in_utc : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | {
       day_of_week = v_day_of_week;
       time_of_day_in_utc = v_time_of_day_in_utc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_time_of_day_in_utc
         in
         ("time_of_day_in_utc", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

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

type azurerm_managed_lustre_file_system = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_capacity_in_tb : float prop;
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  zones : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  encryption_key : encryption_key list;
      [@default []] [@yojson_drop_default ( = )]
  hsm_setting : hsm_setting list;
      [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  maintenance_window : maintenance_window list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_managed_lustre_file_system) -> ()

let yojson_of_azurerm_managed_lustre_file_system =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       storage_capacity_in_tb = v_storage_capacity_in_tb;
       subnet_id = v_subnet_id;
       tags = v_tags;
       zones = v_zones;
       encryption_key = v_encryption_key;
       hsm_setting = v_hsm_setting;
       identity = v_identity;
       maintenance_window = v_maintenance_window;
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
         if [] = v_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_window)
               v_maintenance_window
           in
           let bnd = "maintenance_window", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_hsm_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hsm_setting) v_hsm_setting
           in
           let bnd = "hsm_setting", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_key)
               v_encryption_key
           in
           let bnd = "encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_zones
           in
           let bnd = "zones", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_storage_capacity_in_tb
         in
         ("storage_capacity_in_tb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : azurerm_managed_lustre_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_managed_lustre_file_system

[@@@deriving.end]

let encryption_key ~key_url ~source_vault_id () : encryption_key =
  { key_url; source_vault_id }

let hsm_setting ?import_prefix ~container_id ~logging_container_id ()
    : hsm_setting =
  { container_id; import_prefix; logging_container_id }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let maintenance_window ~day_of_week ~time_of_day_in_utc () :
    maintenance_window =
  { day_of_week; time_of_day_in_utc }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_managed_lustre_file_system ?id ?tags
    ?(encryption_key = []) ?(hsm_setting = []) ?(identity = [])
    ?timeouts ~location ~name ~resource_group_name ~sku_name
    ~storage_capacity_in_tb ~subnet_id ~zones ~maintenance_window ()
    : azurerm_managed_lustre_file_system =
  {
    id;
    location;
    name;
    resource_group_name;
    sku_name;
    storage_capacity_in_tb;
    subnet_id;
    tags;
    zones;
    encryption_key;
    hsm_setting;
    identity;
    maintenance_window;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  mgs_address : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_capacity_in_tb : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let make ?id ?tags ?(encryption_key = []) ?(hsm_setting = [])
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~storage_capacity_in_tb ~subnet_id ~zones
    ~maintenance_window __id =
  let __type = "azurerm_managed_lustre_file_system" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mgs_address = Prop.computed __type __id "mgs_address";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       storage_capacity_in_tb =
         Prop.computed __type __id "storage_capacity_in_tb";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_managed_lustre_file_system
        (azurerm_managed_lustre_file_system ?id ?tags ~encryption_key
           ~hsm_setting ~identity ?timeouts ~location ~name
           ~resource_group_name ~sku_name ~storage_capacity_in_tb
           ~subnet_id ~zones ~maintenance_window ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(encryption_key = [])
    ?(hsm_setting = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~storage_capacity_in_tb ~subnet_id
    ~zones ~maintenance_window __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~encryption_key ~hsm_setting ~identity ?timeouts
      ~location ~name ~resource_group_name ~sku_name
      ~storage_capacity_in_tb ~subnet_id ~zones ~maintenance_window
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
