(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type target_region = {
  name : string prop;
  regional_replica_count : float prop;
  storage_account_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_region) -> ()

let yojson_of_target_region =
  (function
   | {
       name = v_name;
       regional_replica_count = v_regional_replica_count;
       storage_account_type = v_storage_account_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_type
         in
         ("storage_account_type", arg) :: bnds
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
       `Assoc bnds
    : target_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_region

[@@@deriving.end]

type azurerm_shared_image_version = {
  gallery_name : string prop;
  id : string prop option; [@option]
  image_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sort_versions_by_semver : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_shared_image_version) -> ()

let yojson_of_azurerm_shared_image_version =
  (function
   | {
       gallery_name = v_gallery_name;
       id = v_id;
       image_name = v_image_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sort_versions_by_semver = v_sort_versions_by_semver;
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
         match v_sort_versions_by_semver with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sort_versions_by_semver", arg in
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
       `Assoc bnds
    : azurerm_shared_image_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_shared_image_version

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_shared_image_version ?id ?sort_versions_by_semver
    ?timeouts ~gallery_name ~image_name ~name ~resource_group_name ()
    : azurerm_shared_image_version =
  {
    gallery_name;
    id;
    image_name;
    name;
    resource_group_name;
    sort_versions_by_semver;
    timeouts;
  }

type t = {
  tf_name : string;
  exclude_from_latest : bool prop;
  gallery_name : string prop;
  id : string prop;
  image_name : string prop;
  location : string prop;
  managed_image_id : string prop;
  name : string prop;
  os_disk_image_size_gb : float prop;
  os_disk_snapshot_id : string prop;
  resource_group_name : string prop;
  sort_versions_by_semver : bool prop;
  tags : (string * string) list prop;
  target_region : target_region list prop;
}

let make ?id ?sort_versions_by_semver ?timeouts ~gallery_name
    ~image_name ~name ~resource_group_name __id =
  let __type = "azurerm_shared_image_version" in
  let __attrs =
    ({
       tf_name = __id;
       exclude_from_latest =
         Prop.computed __type __id "exclude_from_latest";
       gallery_name = Prop.computed __type __id "gallery_name";
       id = Prop.computed __type __id "id";
       image_name = Prop.computed __type __id "image_name";
       location = Prop.computed __type __id "location";
       managed_image_id =
         Prop.computed __type __id "managed_image_id";
       name = Prop.computed __type __id "name";
       os_disk_image_size_gb =
         Prop.computed __type __id "os_disk_image_size_gb";
       os_disk_snapshot_id =
         Prop.computed __type __id "os_disk_snapshot_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sort_versions_by_semver =
         Prop.computed __type __id "sort_versions_by_semver";
       tags = Prop.computed __type __id "tags";
       target_region = Prop.computed __type __id "target_region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_shared_image_version
        (azurerm_shared_image_version ?id ?sort_versions_by_semver
           ?timeouts ~gallery_name ~image_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?sort_versions_by_semver ?timeouts
    ~gallery_name ~image_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?sort_versions_by_semver ?timeouts ~gallery_name
      ~image_name ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
