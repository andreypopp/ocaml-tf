(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type manage_action = {
  install : string prop;
  remove : string prop;
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : manage_action) -> ()

let yojson_of_manage_action =
  (function
   | { install = v_install; remove = v_remove; update = v_update } ->
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
         let arg = yojson_of_prop yojson_of_string v_remove in
         ("remove", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_install in
         ("install", arg) :: bnds
       in
       `Assoc bnds
    : manage_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_manage_action

[@@@deriving.end]

type source = {
  default_configuration_link : string prop option; [@option]
  media_link : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       default_configuration_link = v_default_configuration_link;
       media_link = v_media_link;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_media_link in
         ("media_link", arg) :: bnds
       in
       let bnds =
         match v_default_configuration_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_configuration_link", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type target_region = {
  exclude_from_latest : bool prop option; [@option]
  name : string prop;
  regional_replica_count : float prop;
  storage_account_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_region) -> ()

let yojson_of_target_region =
  (function
   | {
       exclude_from_latest = v_exclude_from_latest;
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
         match v_exclude_from_latest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_from_latest", arg in
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

type azurerm_gallery_application_version = {
  config_file : string prop option; [@option]
  enable_health_check : bool prop option; [@option]
  end_of_life_date : string prop option; [@option]
  exclude_from_latest : bool prop option; [@option]
  gallery_application_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  package_file : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  manage_action : manage_action list;
      [@default []] [@yojson_drop_default ( = )]
  source : source list; [@default []] [@yojson_drop_default ( = )]
  target_region : target_region list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_gallery_application_version) -> ()

let yojson_of_azurerm_gallery_application_version =
  (function
   | {
       config_file = v_config_file;
       enable_health_check = v_enable_health_check;
       end_of_life_date = v_end_of_life_date;
       exclude_from_latest = v_exclude_from_latest;
       gallery_application_id = v_gallery_application_id;
       id = v_id;
       location = v_location;
       name = v_name;
       package_file = v_package_file;
       tags = v_tags;
       manage_action = v_manage_action;
       source = v_source;
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
         if [] = v_target_region then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_region) v_target_region
           in
           let bnd = "target_region", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_manage_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_manage_action) v_manage_action
           in
           let bnd = "manage_action", arg in
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
         match v_package_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "package_file", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gallery_application_id
         in
         ("gallery_application_id", arg) :: bnds
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
         match v_enable_health_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_health_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config_file", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_gallery_application_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_gallery_application_version

[@@@deriving.end]

let manage_action ?update ~install ~remove () : manage_action =
  { install; remove; update }

let source ?default_configuration_link ~media_link () : source =
  { default_configuration_link; media_link }

let target_region ?exclude_from_latest ?storage_account_type ~name
    ~regional_replica_count () : target_region =
  {
    exclude_from_latest;
    name;
    regional_replica_count;
    storage_account_type;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_gallery_application_version ?config_file
    ?enable_health_check ?end_of_life_date ?exclude_from_latest ?id
    ?package_file ?tags ?timeouts ~gallery_application_id ~location
    ~name ~manage_action ~source ~target_region () :
    azurerm_gallery_application_version =
  {
    config_file;
    enable_health_check;
    end_of_life_date;
    exclude_from_latest;
    gallery_application_id;
    id;
    location;
    name;
    package_file;
    tags;
    manage_action;
    source;
    target_region;
    timeouts;
  }

type t = {
  tf_name : string;
  config_file : string prop;
  enable_health_check : bool prop;
  end_of_life_date : string prop;
  exclude_from_latest : bool prop;
  gallery_application_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  package_file : string prop;
  tags : (string * string) list prop;
}

let make ?config_file ?enable_health_check ?end_of_life_date
    ?exclude_from_latest ?id ?package_file ?tags ?timeouts
    ~gallery_application_id ~location ~name ~manage_action ~source
    ~target_region __id =
  let __type = "azurerm_gallery_application_version" in
  let __attrs =
    ({
       tf_name = __id;
       config_file = Prop.computed __type __id "config_file";
       enable_health_check =
         Prop.computed __type __id "enable_health_check";
       end_of_life_date =
         Prop.computed __type __id "end_of_life_date";
       exclude_from_latest =
         Prop.computed __type __id "exclude_from_latest";
       gallery_application_id =
         Prop.computed __type __id "gallery_application_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       package_file = Prop.computed __type __id "package_file";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_gallery_application_version
        (azurerm_gallery_application_version ?config_file
           ?enable_health_check ?end_of_life_date
           ?exclude_from_latest ?id ?package_file ?tags ?timeouts
           ~gallery_application_id ~location ~name ~manage_action
           ~source ~target_region ());
    attrs = __attrs;
  }

let register ?tf_module ?config_file ?enable_health_check
    ?end_of_life_date ?exclude_from_latest ?id ?package_file ?tags
    ?timeouts ~gallery_application_id ~location ~name ~manage_action
    ~source ~target_region __id =
  let (r : _ Tf_core.resource) =
    make ?config_file ?enable_health_check ?end_of_life_date
      ?exclude_from_latest ?id ?package_file ?tags ?timeouts
      ~gallery_application_id ~location ~name ~manage_action ~source
      ~target_region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
