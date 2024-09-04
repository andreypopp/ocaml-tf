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

type images__target_region = {
  name : string prop;
  regional_replica_count : float prop;
  storage_account_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : images__target_region) -> ()

let yojson_of_images__target_region =
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
    : images__target_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_images__target_region

[@@@deriving.end]

type images = {
  exclude_from_latest : bool prop;
  id : string prop;
  location : string prop;
  managed_image_id : string prop;
  name : string prop;
  tags : string prop Tf_core.assoc;
  target_region : images__target_region list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : images) -> ()

let yojson_of_images =
  (function
   | {
       exclude_from_latest = v_exclude_from_latest;
       id = v_id;
       location = v_location;
       managed_image_id = v_managed_image_id;
       name = v_name;
       tags = v_tags;
       target_region = v_target_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_region then bnds
         else
           let arg =
             (yojson_of_list yojson_of_images__target_region)
               v_target_region
           in
           let bnd = "target_region", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_image_id
         in
         ("managed_image_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_exclude_from_latest
         in
         ("exclude_from_latest", arg) :: bnds
       in
       `Assoc bnds
    : images -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_images

[@@@deriving.end]

type azurerm_shared_image_versions = {
  gallery_name : string prop;
  id : string prop option; [@option]
  image_name : string prop;
  resource_group_name : string prop;
  tags_filter : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_shared_image_versions) -> ()

let yojson_of_azurerm_shared_image_versions =
  (function
   | {
       gallery_name = v_gallery_name;
       id = v_id;
       image_name = v_image_name;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
    : azurerm_shared_image_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_shared_image_versions

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_shared_image_versions ?id ?tags_filter ?timeouts
    ~gallery_name ~image_name ~resource_group_name () :
    azurerm_shared_image_versions =
  {
    gallery_name;
    id;
    image_name;
    resource_group_name;
    tags_filter;
    timeouts;
  }

type t = {
  tf_name : string;
  gallery_name : string prop;
  id : string prop;
  image_name : string prop;
  images : images list prop;
  resource_group_name : string prop;
  tags_filter : string Tf_core.assoc prop;
}

let make ?id ?tags_filter ?timeouts ~gallery_name ~image_name
    ~resource_group_name __id =
  let __type = "azurerm_shared_image_versions" in
  let __attrs =
    ({
       tf_name = __id;
       gallery_name = Prop.computed __type __id "gallery_name";
       id = Prop.computed __type __id "id";
       image_name = Prop.computed __type __id "image_name";
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
      yojson_of_azurerm_shared_image_versions
        (azurerm_shared_image_versions ?id ?tags_filter ?timeouts
           ~gallery_name ~image_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags_filter ?timeouts ~gallery_name
    ~image_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags_filter ?timeouts ~gallery_name ~image_name
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
