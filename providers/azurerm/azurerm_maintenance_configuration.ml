(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type install_patches__linux = {
  classifications_to_include : string prop list option; [@option]
  package_names_mask_to_exclude : string prop list option; [@option]
  package_names_mask_to_include : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : install_patches__linux) -> ()

let yojson_of_install_patches__linux =
  (function
   | {
       classifications_to_include = v_classifications_to_include;
       package_names_mask_to_exclude =
         v_package_names_mask_to_exclude;
       package_names_mask_to_include =
         v_package_names_mask_to_include;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_package_names_mask_to_include with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "package_names_mask_to_include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_package_names_mask_to_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "package_names_mask_to_exclude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classifications_to_include with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "classifications_to_include", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : install_patches__linux -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_install_patches__linux

[@@@deriving.end]

type install_patches__windows = {
  classifications_to_include : string prop list option; [@option]
  kb_numbers_to_exclude : string prop list option; [@option]
  kb_numbers_to_include : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : install_patches__windows) -> ()

let yojson_of_install_patches__windows =
  (function
   | {
       classifications_to_include = v_classifications_to_include;
       kb_numbers_to_exclude = v_kb_numbers_to_exclude;
       kb_numbers_to_include = v_kb_numbers_to_include;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kb_numbers_to_include with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "kb_numbers_to_include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kb_numbers_to_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "kb_numbers_to_exclude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classifications_to_include with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "classifications_to_include", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : install_patches__windows -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_install_patches__windows

[@@@deriving.end]

type install_patches = {
  reboot : string prop option; [@option]
  linux : install_patches__linux list;
  windows : install_patches__windows list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : install_patches) -> ()

let yojson_of_install_patches =
  (function
   | { reboot = v_reboot; linux = v_linux; windows = v_windows } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_install_patches__windows
             v_windows
         in
         ("windows", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_install_patches__linux v_linux
         in
         ("linux", arg) :: bnds
       in
       let bnds =
         match v_reboot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reboot", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : install_patches -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_install_patches

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

type window = {
  duration : string prop option; [@option]
  expiration_date_time : string prop option; [@option]
  recur_every : string prop option; [@option]
  start_date_time : string prop;
  time_zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : window) -> ()

let yojson_of_window =
  (function
   | {
       duration = v_duration;
       expiration_date_time = v_expiration_date_time;
       recur_every = v_recur_every;
       start_date_time = v_start_date_time;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_start_date_time
         in
         ("start_date_time", arg) :: bnds
       in
       let bnds =
         match v_recur_every with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recur_every", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_date_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_date_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_window

[@@@deriving.end]

type azurerm_maintenance_configuration = {
  id : string prop option; [@option]
  in_guest_user_patch_mode : string prop option; [@option]
  location : string prop;
  name : string prop;
  properties : (string * string prop) list option; [@option]
  resource_group_name : string prop;
  scope : string prop;
  tags : (string * string prop) list option; [@option]
  visibility : string prop option; [@option]
  install_patches : install_patches list;
  timeouts : timeouts option;
  window : window list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_maintenance_configuration) -> ()

let yojson_of_azurerm_maintenance_configuration =
  (function
   | {
       id = v_id;
       in_guest_user_patch_mode = v_in_guest_user_patch_mode;
       location = v_location;
       name = v_name;
       properties = v_properties;
       resource_group_name = v_resource_group_name;
       scope = v_scope;
       tags = v_tags;
       visibility = v_visibility;
       install_patches = v_install_patches;
       timeouts = v_timeouts;
       window = v_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_window v_window in
         ("window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_install_patches v_install_patches
         in
         ("install_patches", arg) :: bnds
       in
       let bnds =
         match v_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "visibility", arg in
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
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_properties with
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
             let bnd = "properties", arg in
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
         match v_in_guest_user_patch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "in_guest_user_patch_mode", arg in
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
       `Assoc bnds
    : azurerm_maintenance_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_maintenance_configuration

[@@@deriving.end]

let install_patches__linux ?classifications_to_include
    ?package_names_mask_to_exclude ?package_names_mask_to_include ()
    : install_patches__linux =
  {
    classifications_to_include;
    package_names_mask_to_exclude;
    package_names_mask_to_include;
  }

let install_patches__windows ?classifications_to_include
    ?kb_numbers_to_exclude ?kb_numbers_to_include () :
    install_patches__windows =
  {
    classifications_to_include;
    kb_numbers_to_exclude;
    kb_numbers_to_include;
  }

let install_patches ?reboot ~linux ~windows () : install_patches =
  { reboot; linux; windows }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let window ?duration ?expiration_date_time ?recur_every
    ~start_date_time ~time_zone () : window =
  {
    duration;
    expiration_date_time;
    recur_every;
    start_date_time;
    time_zone;
  }

let azurerm_maintenance_configuration ?id ?in_guest_user_patch_mode
    ?properties ?tags ?visibility ?timeouts ~location ~name
    ~resource_group_name ~scope ~install_patches ~window () :
    azurerm_maintenance_configuration =
  {
    id;
    in_guest_user_patch_mode;
    location;
    name;
    properties;
    resource_group_name;
    scope;
    tags;
    visibility;
    install_patches;
    timeouts;
    window;
  }

type t = {
  id : string prop;
  in_guest_user_patch_mode : string prop;
  location : string prop;
  name : string prop;
  properties : (string * string) list prop;
  resource_group_name : string prop;
  scope : string prop;
  tags : (string * string) list prop;
  visibility : string prop;
}

let make ?id ?in_guest_user_patch_mode ?properties ?tags ?visibility
    ?timeouts ~location ~name ~resource_group_name ~scope
    ~install_patches ~window __id =
  let __type = "azurerm_maintenance_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       in_guest_user_patch_mode =
         Prop.computed __type __id "in_guest_user_patch_mode";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       properties = Prop.computed __type __id "properties";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope = Prop.computed __type __id "scope";
       tags = Prop.computed __type __id "tags";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_maintenance_configuration
        (azurerm_maintenance_configuration ?id
           ?in_guest_user_patch_mode ?properties ?tags ?visibility
           ?timeouts ~location ~name ~resource_group_name ~scope
           ~install_patches ~window ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?in_guest_user_patch_mode ?properties
    ?tags ?visibility ?timeouts ~location ~name ~resource_group_name
    ~scope ~install_patches ~window __id =
  let (r : _ Tf_core.resource) =
    make ?id ?in_guest_user_patch_mode ?properties ?tags ?visibility
      ?timeouts ~location ~name ~resource_group_name ~scope
      ~install_patches ~window __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
