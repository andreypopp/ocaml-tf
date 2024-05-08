(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_region = {
  disk_encryption_set_id : string prop option; [@option]
  exclude_from_latest_enabled : bool prop option; [@option]
  name : string prop;
  regional_replica_count : float prop;
  storage_account_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_region) -> ()

let yojson_of_target_region =
  (function
   | {
       disk_encryption_set_id = v_disk_encryption_set_id;
       exclude_from_latest_enabled = v_exclude_from_latest_enabled;
       name = v_name;
       regional_replica_count = v_regional_replica_count;
       storage_account_type = v_storage_account_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_float v_regional_replica_count
         in
         ("regional_replica_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_exclude_from_latest_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_from_latest_enabled", arg in
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
       `Assoc bnds
    : target_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_region

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

type azurerm_shared_image_version = {
  blob_uri : string prop option; [@option]
  deletion_of_replicated_locations_enabled : bool prop option;
      [@option]
  end_of_life_date : string prop option; [@option]
  exclude_from_latest : bool prop option; [@option]
  gallery_name : string prop;
  id : string prop option; [@option]
  image_name : string prop;
  location : string prop;
  managed_image_id : string prop option; [@option]
  name : string prop;
  os_disk_snapshot_id : string prop option; [@option]
  replication_mode : string prop option; [@option]
  resource_group_name : string prop;
  storage_account_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  target_region : target_region list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_shared_image_version) -> ()

let yojson_of_azurerm_shared_image_version =
  (function
   | {
       blob_uri = v_blob_uri;
       deletion_of_replicated_locations_enabled =
         v_deletion_of_replicated_locations_enabled;
       end_of_life_date = v_end_of_life_date;
       exclude_from_latest = v_exclude_from_latest;
       gallery_name = v_gallery_name;
       id = v_id;
       image_name = v_image_name;
       location = v_location;
       managed_image_id = v_managed_image_id;
       name = v_name;
       os_disk_snapshot_id = v_os_disk_snapshot_id;
       replication_mode = v_replication_mode;
       resource_group_name = v_resource_group_name;
       storage_account_id = v_storage_account_id;
       tags = v_tags;
       target_region = v_target_region;
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
         if Stdlib.( = ) [] v_target_region then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_region) v_target_region
           in
           let bnd = "target_region", arg in
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
         match v_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_replication_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replication_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_disk_snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_image_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_image_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_gallery_name in
         ("gallery_name", arg) :: bnds
       in
       let bnds =
         match v_exclude_from_latest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_from_latest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_of_life_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_of_life_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_of_replicated_locations_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "deletion_of_replicated_locations_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_blob_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blob_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_shared_image_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_shared_image_version

[@@@deriving.end]

let target_region ?disk_encryption_set_id
    ?exclude_from_latest_enabled ?storage_account_type ~name
    ~regional_replica_count () : target_region =
  {
    disk_encryption_set_id;
    exclude_from_latest_enabled;
    name;
    regional_replica_count;
    storage_account_type;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_shared_image_version ?blob_uri
    ?deletion_of_replicated_locations_enabled ?end_of_life_date
    ?exclude_from_latest ?id ?managed_image_id ?os_disk_snapshot_id
    ?replication_mode ?storage_account_id ?tags ?timeouts
    ~gallery_name ~image_name ~location ~name ~resource_group_name
    ~target_region () : azurerm_shared_image_version =
  {
    blob_uri;
    deletion_of_replicated_locations_enabled;
    end_of_life_date;
    exclude_from_latest;
    gallery_name;
    id;
    image_name;
    location;
    managed_image_id;
    name;
    os_disk_snapshot_id;
    replication_mode;
    resource_group_name;
    storage_account_id;
    tags;
    target_region;
    timeouts;
  }

type t = {
  tf_name : string;
  blob_uri : string prop;
  deletion_of_replicated_locations_enabled : bool prop;
  end_of_life_date : string prop;
  exclude_from_latest : bool prop;
  gallery_name : string prop;
  id : string prop;
  image_name : string prop;
  location : string prop;
  managed_image_id : string prop;
  name : string prop;
  os_disk_snapshot_id : string prop;
  replication_mode : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
}

let make ?blob_uri ?deletion_of_replicated_locations_enabled
    ?end_of_life_date ?exclude_from_latest ?id ?managed_image_id
    ?os_disk_snapshot_id ?replication_mode ?storage_account_id ?tags
    ?timeouts ~gallery_name ~image_name ~location ~name
    ~resource_group_name ~target_region __id =
  let __type = "azurerm_shared_image_version" in
  let __attrs =
    ({
       tf_name = __id;
       blob_uri = Prop.computed __type __id "blob_uri";
       deletion_of_replicated_locations_enabled =
         Prop.computed __type __id
           "deletion_of_replicated_locations_enabled";
       end_of_life_date =
         Prop.computed __type __id "end_of_life_date";
       exclude_from_latest =
         Prop.computed __type __id "exclude_from_latest";
       gallery_name = Prop.computed __type __id "gallery_name";
       id = Prop.computed __type __id "id";
       image_name = Prop.computed __type __id "image_name";
       location = Prop.computed __type __id "location";
       managed_image_id =
         Prop.computed __type __id "managed_image_id";
       name = Prop.computed __type __id "name";
       os_disk_snapshot_id =
         Prop.computed __type __id "os_disk_snapshot_id";
       replication_mode =
         Prop.computed __type __id "replication_mode";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_shared_image_version
        (azurerm_shared_image_version ?blob_uri
           ?deletion_of_replicated_locations_enabled
           ?end_of_life_date ?exclude_from_latest ?id
           ?managed_image_id ?os_disk_snapshot_id ?replication_mode
           ?storage_account_id ?tags ?timeouts ~gallery_name
           ~image_name ~location ~name ~resource_group_name
           ~target_region ());
    attrs = __attrs;
  }

let register ?tf_module ?blob_uri
    ?deletion_of_replicated_locations_enabled ?end_of_life_date
    ?exclude_from_latest ?id ?managed_image_id ?os_disk_snapshot_id
    ?replication_mode ?storage_account_id ?tags ?timeouts
    ~gallery_name ~image_name ~location ~name ~resource_group_name
    ~target_region __id =
  let (r : _ Tf_core.resource) =
    make ?blob_uri ?deletion_of_replicated_locations_enabled
      ?end_of_life_date ?exclude_from_latest ?id ?managed_image_id
      ?os_disk_snapshot_id ?replication_mode ?storage_account_id
      ?tags ?timeouts ~gallery_name ~image_name ~location ~name
      ~resource_group_name ~target_region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
