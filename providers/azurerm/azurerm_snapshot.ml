(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_settings__disk_encryption_key = {
  secret_url : string prop;
  source_vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_settings__disk_encryption_key) -> ()

let yojson_of_encryption_settings__disk_encryption_key =
  (function
   | {
       secret_url = v_secret_url;
       source_vault_id = v_source_vault_id;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_secret_url in
         ("secret_url", arg) :: bnds
       in
       `Assoc bnds
    : encryption_settings__disk_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_settings__disk_encryption_key

[@@@deriving.end]

type encryption_settings__key_encryption_key = {
  key_url : string prop;
  source_vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_settings__key_encryption_key) -> ()

let yojson_of_encryption_settings__key_encryption_key =
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
    : encryption_settings__key_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_settings__key_encryption_key

[@@@deriving.end]

type encryption_settings = {
  enabled : bool prop option; [@option]
  disk_encryption_key :
    encryption_settings__disk_encryption_key list;
  key_encryption_key : encryption_settings__key_encryption_key list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_settings) -> ()

let yojson_of_encryption_settings =
  (function
   | {
       enabled = v_enabled;
       disk_encryption_key = v_disk_encryption_key;
       key_encryption_key = v_key_encryption_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_settings__key_encryption_key
             v_key_encryption_key
         in
         ("key_encryption_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_settings__disk_encryption_key
             v_disk_encryption_key
         in
         ("disk_encryption_key", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_settings

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

type azurerm_snapshot = {
  create_option : string prop;
  disk_size_gb : float prop option; [@option]
  id : string prop option; [@option]
  incremental_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_resource_id : string prop option; [@option]
  source_uri : string prop option; [@option]
  storage_account_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  encryption_settings : encryption_settings list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_snapshot) -> ()

let yojson_of_azurerm_snapshot =
  (function
   | {
       create_option = v_create_option;
       disk_size_gb = v_disk_size_gb;
       id = v_id;
       incremental_enabled = v_incremental_enabled;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       source_resource_id = v_source_resource_id;
       source_uri = v_source_uri;
       storage_account_id = v_storage_account_id;
       tags = v_tags;
       encryption_settings = v_encryption_settings;
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
           yojson_of_list yojson_of_encryption_settings
             v_encryption_settings
         in
         ("encryption_settings", arg) :: bnds
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
         match v_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_resource_id", arg in
             bnd :: bnds
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
         match v_incremental_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "incremental_enabled", arg in
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
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_option in
         ("create_option", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_snapshot

[@@@deriving.end]

let encryption_settings__disk_encryption_key ~secret_url
    ~source_vault_id () : encryption_settings__disk_encryption_key =
  { secret_url; source_vault_id }

let encryption_settings__key_encryption_key ~key_url ~source_vault_id
    () : encryption_settings__key_encryption_key =
  { key_url; source_vault_id }

let encryption_settings ?enabled ?(disk_encryption_key = [])
    ?(key_encryption_key = []) () : encryption_settings =
  { enabled; disk_encryption_key; key_encryption_key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_snapshot ?disk_size_gb ?id ?incremental_enabled
    ?source_resource_id ?source_uri ?storage_account_id ?tags
    ?(encryption_settings = []) ?timeouts ~create_option ~location
    ~name ~resource_group_name () : azurerm_snapshot =
  {
    create_option;
    disk_size_gb;
    id;
    incremental_enabled;
    location;
    name;
    resource_group_name;
    source_resource_id;
    source_uri;
    storage_account_id;
    tags;
    encryption_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  create_option : string prop;
  disk_size_gb : float prop;
  id : string prop;
  incremental_enabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_resource_id : string prop;
  source_uri : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  trusted_launch_enabled : bool prop;
}

let make ?disk_size_gb ?id ?incremental_enabled ?source_resource_id
    ?source_uri ?storage_account_id ?tags ?(encryption_settings = [])
    ?timeouts ~create_option ~location ~name ~resource_group_name
    __id =
  let __type = "azurerm_snapshot" in
  let __attrs =
    ({
       tf_name = __id;
       create_option = Prop.computed __type __id "create_option";
       disk_size_gb = Prop.computed __type __id "disk_size_gb";
       id = Prop.computed __type __id "id";
       incremental_enabled =
         Prop.computed __type __id "incremental_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
       source_uri = Prop.computed __type __id "source_uri";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       tags = Prop.computed __type __id "tags";
       trusted_launch_enabled =
         Prop.computed __type __id "trusted_launch_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_snapshot
        (azurerm_snapshot ?disk_size_gb ?id ?incremental_enabled
           ?source_resource_id ?source_uri ?storage_account_id ?tags
           ~encryption_settings ?timeouts ~create_option ~location
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?disk_size_gb ?id ?incremental_enabled
    ?source_resource_id ?source_uri ?storage_account_id ?tags
    ?(encryption_settings = []) ?timeouts ~create_option ~location
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?disk_size_gb ?id ?incremental_enabled ?source_resource_id
      ?source_uri ?storage_account_id ?tags ~encryption_settings
      ?timeouts ~create_option ~location ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
