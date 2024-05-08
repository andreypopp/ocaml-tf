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

type images__os_disk = {
  blob_uri : string prop;
  caching : string prop;
  disk_encryption_set_id : string prop;
  managed_disk_id : string prop;
  os_state : string prop;
  os_type : string prop;
  size_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : images__os_disk) -> ()

let yojson_of_images__os_disk =
  (function
   | {
       blob_uri = v_blob_uri;
       caching = v_caching;
       disk_encryption_set_id = v_disk_encryption_set_id;
       managed_disk_id = v_managed_disk_id;
       os_state = v_os_state;
       os_type = v_os_type;
       size_gb = v_size_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_gb in
         ("size_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_type in
         ("os_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_state in
         ("os_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_disk_id
         in
         ("managed_disk_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_disk_encryption_set_id
         in
         ("disk_encryption_set_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching in
         ("caching", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blob_uri in
         ("blob_uri", arg) :: bnds
       in
       `Assoc bnds
    : images__os_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_images__os_disk

[@@@deriving.end]

type images__data_disk = {
  blob_uri : string prop;
  caching : string prop;
  lun : float prop;
  managed_disk_id : string prop;
  size_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : images__data_disk) -> ()

let yojson_of_images__data_disk =
  (function
   | {
       blob_uri = v_blob_uri;
       caching = v_caching;
       lun = v_lun;
       managed_disk_id = v_managed_disk_id;
       size_gb = v_size_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_gb in
         ("size_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_disk_id
         in
         ("managed_disk_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching in
         ("caching", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blob_uri in
         ("blob_uri", arg) :: bnds
       in
       `Assoc bnds
    : images__data_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_images__data_disk

[@@@deriving.end]

type images = {
  data_disk : images__data_disk list;
      [@default []] [@yojson_drop_default ( = )]
  location : string prop;
  name : string prop;
  os_disk : images__os_disk list;
      [@default []] [@yojson_drop_default ( = )]
  tags : (string * string prop) list;
  zone_resilient : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : images) -> ()

let yojson_of_images =
  (function
   | {
       data_disk = v_data_disk;
       location = v_location;
       name = v_name;
       os_disk = v_os_disk;
       tags = v_tags;
       zone_resilient = v_zone_resilient;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_zone_resilient in
         ("zone_resilient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         if [] = v_os_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_images__os_disk) v_os_disk
           in
           let bnd = "os_disk", arg in
           bnd :: bnds
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
         if [] = v_data_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_images__data_disk) v_data_disk
           in
           let bnd = "data_disk", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : images -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_images

[@@@deriving.end]

type azurerm_images = {
  id : string prop option; [@option]
  resource_group_name : string prop;
  tags_filter : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_images) -> ()

let yojson_of_azurerm_images =
  (function
   | {
       id = v_id;
       resource_group_name = v_resource_group_name;
       tags_filter = v_tags_filter;
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
         match v_tags_filter with
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
             let bnd = "tags_filter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
    : azurerm_images -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_images

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_images ?id ?tags_filter ?timeouts ~resource_group_name ()
    : azurerm_images =
  { id; resource_group_name; tags_filter; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  images : images list prop;
  resource_group_name : string prop;
  tags_filter : (string * string) list prop;
}

let make ?id ?tags_filter ?timeouts ~resource_group_name __id =
  let __type = "azurerm_images" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       images = Prop.computed __type __id "images";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags_filter = Prop.computed __type __id "tags_filter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_images
        (azurerm_images ?id ?tags_filter ?timeouts
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags_filter ?timeouts
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags_filter ?timeouts ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
