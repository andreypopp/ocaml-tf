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
      [@default []] [@yojson_drop_default ( = )]
  key_encryption_key : encryption_settings__key_encryption_key list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_key_encryption_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encryption_settings__key_encryption_key)
               v_key_encryption_key
           in
           let bnd = "key_encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_disk_encryption_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encryption_settings__disk_encryption_key)
               v_disk_encryption_key
           in
           let bnd = "disk_encryption_key", arg in
           bnd :: bnds
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

type azurerm_managed_disk = {
  create_option : string prop;
  disk_access_id : string prop option; [@option]
  disk_encryption_set_id : string prop option; [@option]
  disk_iops_read_only : float prop option; [@option]
  disk_iops_read_write : float prop option; [@option]
  disk_mbps_read_only : float prop option; [@option]
  disk_mbps_read_write : float prop option; [@option]
  disk_size_gb : float prop option; [@option]
  edge_zone : string prop option; [@option]
  gallery_image_reference_id : string prop option; [@option]
  hyper_v_generation : string prop option; [@option]
  id : string prop option; [@option]
  image_reference_id : string prop option; [@option]
  location : string prop;
  logical_sector_size : float prop option; [@option]
  max_shares : float prop option; [@option]
  name : string prop;
  network_access_policy : string prop option; [@option]
  on_demand_bursting_enabled : bool prop option; [@option]
  optimized_frequent_attach_enabled : bool prop option; [@option]
  os_type : string prop option; [@option]
  performance_plus_enabled : bool prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  secure_vm_disk_encryption_set_id : string prop option; [@option]
  security_type : string prop option; [@option]
  source_resource_id : string prop option; [@option]
  source_uri : string prop option; [@option]
  storage_account_id : string prop option; [@option]
  storage_account_type : string prop;
  tags : (string * string prop) list option; [@option]
  tier : string prop option; [@option]
  trusted_launch_enabled : bool prop option; [@option]
  upload_size_bytes : float prop option; [@option]
  zone : string prop option; [@option]
  encryption_settings : encryption_settings list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_managed_disk) -> ()

let yojson_of_azurerm_managed_disk =
  (function
   | {
       create_option = v_create_option;
       disk_access_id = v_disk_access_id;
       disk_encryption_set_id = v_disk_encryption_set_id;
       disk_iops_read_only = v_disk_iops_read_only;
       disk_iops_read_write = v_disk_iops_read_write;
       disk_mbps_read_only = v_disk_mbps_read_only;
       disk_mbps_read_write = v_disk_mbps_read_write;
       disk_size_gb = v_disk_size_gb;
       edge_zone = v_edge_zone;
       gallery_image_reference_id = v_gallery_image_reference_id;
       hyper_v_generation = v_hyper_v_generation;
       id = v_id;
       image_reference_id = v_image_reference_id;
       location = v_location;
       logical_sector_size = v_logical_sector_size;
       max_shares = v_max_shares;
       name = v_name;
       network_access_policy = v_network_access_policy;
       on_demand_bursting_enabled = v_on_demand_bursting_enabled;
       optimized_frequent_attach_enabled =
         v_optimized_frequent_attach_enabled;
       os_type = v_os_type;
       performance_plus_enabled = v_performance_plus_enabled;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       secure_vm_disk_encryption_set_id =
         v_secure_vm_disk_encryption_set_id;
       security_type = v_security_type;
       source_resource_id = v_source_resource_id;
       source_uri = v_source_uri;
       storage_account_id = v_storage_account_id;
       storage_account_type = v_storage_account_type;
       tags = v_tags;
       tier = v_tier;
       trusted_launch_enabled = v_trusted_launch_enabled;
       upload_size_bytes = v_upload_size_bytes;
       zone = v_zone;
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
         if [] = v_encryption_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_settings)
               v_encryption_settings
           in
           let bnd = "encryption_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_upload_size_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "upload_size_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trusted_launch_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "trusted_launch_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_type
         in
         ("storage_account_type", arg) :: bnds
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
         match v_security_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secure_vm_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secure_vm_disk_encryption_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_performance_plus_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "performance_plus_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optimized_frequent_attach_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optimized_frequent_attach_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_demand_bursting_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "on_demand_bursting_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_access_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_access_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_shares with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_shares", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logical_sector_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "logical_sector_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_image_reference_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_reference_id", arg in
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
         match v_hyper_v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hyper_v_generation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gallery_image_reference_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gallery_image_reference_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_zone", arg in
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
         match v_disk_mbps_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_mbps_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_mbps_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_mbps_read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_iops_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_iops_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_iops_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_iops_read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_access_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_access_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_option in
         ("create_option", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_managed_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_managed_disk

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

let azurerm_managed_disk ?disk_access_id ?disk_encryption_set_id
    ?disk_iops_read_only ?disk_iops_read_write ?disk_mbps_read_only
    ?disk_mbps_read_write ?disk_size_gb ?edge_zone
    ?gallery_image_reference_id ?hyper_v_generation ?id
    ?image_reference_id ?logical_sector_size ?max_shares
    ?network_access_policy ?on_demand_bursting_enabled
    ?optimized_frequent_attach_enabled ?os_type
    ?performance_plus_enabled ?public_network_access_enabled
    ?secure_vm_disk_encryption_set_id ?security_type
    ?source_resource_id ?source_uri ?storage_account_id ?tags ?tier
    ?trusted_launch_enabled ?upload_size_bytes ?zone
    ?(encryption_settings = []) ?timeouts ~create_option ~location
    ~name ~resource_group_name ~storage_account_type () :
    azurerm_managed_disk =
  {
    create_option;
    disk_access_id;
    disk_encryption_set_id;
    disk_iops_read_only;
    disk_iops_read_write;
    disk_mbps_read_only;
    disk_mbps_read_write;
    disk_size_gb;
    edge_zone;
    gallery_image_reference_id;
    hyper_v_generation;
    id;
    image_reference_id;
    location;
    logical_sector_size;
    max_shares;
    name;
    network_access_policy;
    on_demand_bursting_enabled;
    optimized_frequent_attach_enabled;
    os_type;
    performance_plus_enabled;
    public_network_access_enabled;
    resource_group_name;
    secure_vm_disk_encryption_set_id;
    security_type;
    source_resource_id;
    source_uri;
    storage_account_id;
    storage_account_type;
    tags;
    tier;
    trusted_launch_enabled;
    upload_size_bytes;
    zone;
    encryption_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  create_option : string prop;
  disk_access_id : string prop;
  disk_encryption_set_id : string prop;
  disk_iops_read_only : float prop;
  disk_iops_read_write : float prop;
  disk_mbps_read_only : float prop;
  disk_mbps_read_write : float prop;
  disk_size_gb : float prop;
  edge_zone : string prop;
  gallery_image_reference_id : string prop;
  hyper_v_generation : string prop;
  id : string prop;
  image_reference_id : string prop;
  location : string prop;
  logical_sector_size : float prop;
  max_shares : float prop;
  name : string prop;
  network_access_policy : string prop;
  on_demand_bursting_enabled : bool prop;
  optimized_frequent_attach_enabled : bool prop;
  os_type : string prop;
  performance_plus_enabled : bool prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  secure_vm_disk_encryption_set_id : string prop;
  security_type : string prop;
  source_resource_id : string prop;
  source_uri : string prop;
  storage_account_id : string prop;
  storage_account_type : string prop;
  tags : (string * string) list prop;
  tier : string prop;
  trusted_launch_enabled : bool prop;
  upload_size_bytes : float prop;
  zone : string prop;
}

let make ?disk_access_id ?disk_encryption_set_id ?disk_iops_read_only
    ?disk_iops_read_write ?disk_mbps_read_only ?disk_mbps_read_write
    ?disk_size_gb ?edge_zone ?gallery_image_reference_id
    ?hyper_v_generation ?id ?image_reference_id ?logical_sector_size
    ?max_shares ?network_access_policy ?on_demand_bursting_enabled
    ?optimized_frequent_attach_enabled ?os_type
    ?performance_plus_enabled ?public_network_access_enabled
    ?secure_vm_disk_encryption_set_id ?security_type
    ?source_resource_id ?source_uri ?storage_account_id ?tags ?tier
    ?trusted_launch_enabled ?upload_size_bytes ?zone
    ?(encryption_settings = []) ?timeouts ~create_option ~location
    ~name ~resource_group_name ~storage_account_type __id =
  let __type = "azurerm_managed_disk" in
  let __attrs =
    ({
       tf_name = __id;
       create_option = Prop.computed __type __id "create_option";
       disk_access_id = Prop.computed __type __id "disk_access_id";
       disk_encryption_set_id =
         Prop.computed __type __id "disk_encryption_set_id";
       disk_iops_read_only =
         Prop.computed __type __id "disk_iops_read_only";
       disk_iops_read_write =
         Prop.computed __type __id "disk_iops_read_write";
       disk_mbps_read_only =
         Prop.computed __type __id "disk_mbps_read_only";
       disk_mbps_read_write =
         Prop.computed __type __id "disk_mbps_read_write";
       disk_size_gb = Prop.computed __type __id "disk_size_gb";
       edge_zone = Prop.computed __type __id "edge_zone";
       gallery_image_reference_id =
         Prop.computed __type __id "gallery_image_reference_id";
       hyper_v_generation =
         Prop.computed __type __id "hyper_v_generation";
       id = Prop.computed __type __id "id";
       image_reference_id =
         Prop.computed __type __id "image_reference_id";
       location = Prop.computed __type __id "location";
       logical_sector_size =
         Prop.computed __type __id "logical_sector_size";
       max_shares = Prop.computed __type __id "max_shares";
       name = Prop.computed __type __id "name";
       network_access_policy =
         Prop.computed __type __id "network_access_policy";
       on_demand_bursting_enabled =
         Prop.computed __type __id "on_demand_bursting_enabled";
       optimized_frequent_attach_enabled =
         Prop.computed __type __id
           "optimized_frequent_attach_enabled";
       os_type = Prop.computed __type __id "os_type";
       performance_plus_enabled =
         Prop.computed __type __id "performance_plus_enabled";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secure_vm_disk_encryption_set_id =
         Prop.computed __type __id "secure_vm_disk_encryption_set_id";
       security_type = Prop.computed __type __id "security_type";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
       source_uri = Prop.computed __type __id "source_uri";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       storage_account_type =
         Prop.computed __type __id "storage_account_type";
       tags = Prop.computed __type __id "tags";
       tier = Prop.computed __type __id "tier";
       trusted_launch_enabled =
         Prop.computed __type __id "trusted_launch_enabled";
       upload_size_bytes =
         Prop.computed __type __id "upload_size_bytes";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_managed_disk
        (azurerm_managed_disk ?disk_access_id ?disk_encryption_set_id
           ?disk_iops_read_only ?disk_iops_read_write
           ?disk_mbps_read_only ?disk_mbps_read_write ?disk_size_gb
           ?edge_zone ?gallery_image_reference_id ?hyper_v_generation
           ?id ?image_reference_id ?logical_sector_size ?max_shares
           ?network_access_policy ?on_demand_bursting_enabled
           ?optimized_frequent_attach_enabled ?os_type
           ?performance_plus_enabled ?public_network_access_enabled
           ?secure_vm_disk_encryption_set_id ?security_type
           ?source_resource_id ?source_uri ?storage_account_id ?tags
           ?tier ?trusted_launch_enabled ?upload_size_bytes ?zone
           ~encryption_settings ?timeouts ~create_option ~location
           ~name ~resource_group_name ~storage_account_type ());
    attrs = __attrs;
  }

let register ?tf_module ?disk_access_id ?disk_encryption_set_id
    ?disk_iops_read_only ?disk_iops_read_write ?disk_mbps_read_only
    ?disk_mbps_read_write ?disk_size_gb ?edge_zone
    ?gallery_image_reference_id ?hyper_v_generation ?id
    ?image_reference_id ?logical_sector_size ?max_shares
    ?network_access_policy ?on_demand_bursting_enabled
    ?optimized_frequent_attach_enabled ?os_type
    ?performance_plus_enabled ?public_network_access_enabled
    ?secure_vm_disk_encryption_set_id ?security_type
    ?source_resource_id ?source_uri ?storage_account_id ?tags ?tier
    ?trusted_launch_enabled ?upload_size_bytes ?zone
    ?(encryption_settings = []) ?timeouts ~create_option ~location
    ~name ~resource_group_name ~storage_account_type __id =
  let (r : _ Tf_core.resource) =
    make ?disk_access_id ?disk_encryption_set_id ?disk_iops_read_only
      ?disk_iops_read_write ?disk_mbps_read_only
      ?disk_mbps_read_write ?disk_size_gb ?edge_zone
      ?gallery_image_reference_id ?hyper_v_generation ?id
      ?image_reference_id ?logical_sector_size ?max_shares
      ?network_access_policy ?on_demand_bursting_enabled
      ?optimized_frequent_attach_enabled ?os_type
      ?performance_plus_enabled ?public_network_access_enabled
      ?secure_vm_disk_encryption_set_id ?security_type
      ?source_resource_id ?source_uri ?storage_account_id ?tags ?tier
      ?trusted_launch_enabled ?upload_size_bytes ?zone
      ~encryption_settings ?timeouts ~create_option ~location ~name
      ~resource_group_name ~storage_account_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
