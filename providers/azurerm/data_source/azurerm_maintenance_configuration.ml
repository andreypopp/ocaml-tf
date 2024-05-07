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

type install_patches__windows = {
  classifications_to_include : string prop list;
  kb_numbers_to_exclude : string prop list;
  kb_numbers_to_include : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_kb_numbers_to_include
         in
         ("kb_numbers_to_include", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_kb_numbers_to_exclude
         in
         ("kb_numbers_to_exclude", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_classifications_to_include
         in
         ("classifications_to_include", arg) :: bnds
       in
       `Assoc bnds
    : install_patches__windows -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_install_patches__windows

[@@@deriving.end]

type install_patches__linux = {
  classifications_to_include : string prop list;
  package_names_mask_to_exclude : string prop list;
  package_names_mask_to_include : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_package_names_mask_to_include
         in
         ("package_names_mask_to_include", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_package_names_mask_to_exclude
         in
         ("package_names_mask_to_exclude", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_classifications_to_include
         in
         ("classifications_to_include", arg) :: bnds
       in
       `Assoc bnds
    : install_patches__linux -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_install_patches__linux

[@@@deriving.end]

type install_patches = {
  linux : install_patches__linux list;
  reboot : string prop;
  windows : install_patches__windows list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : install_patches) -> ()

let yojson_of_install_patches =
  (function
   | { linux = v_linux; reboot = v_reboot; windows = v_windows } ->
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
         let arg = yojson_of_prop yojson_of_string v_reboot in
         ("reboot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_install_patches__linux v_linux
         in
         ("linux", arg) :: bnds
       in
       `Assoc bnds
    : install_patches -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_install_patches

[@@@deriving.end]

type window = {
  duration : string prop;
  expiration_date_time : string prop;
  recur_every : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_recur_every in
         ("recur_every", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_date_time
         in
         ("expiration_date_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_window

[@@@deriving.end]

type azurerm_maintenance_configuration = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_maintenance_configuration) -> ()

let yojson_of_azurerm_maintenance_configuration =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_maintenance_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_maintenance_configuration

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_maintenance_configuration ?id ?timeouts ~name
    ~resource_group_name () : azurerm_maintenance_configuration =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  in_guest_user_patch_mode : string prop;
  install_patches : install_patches list prop;
  location : string prop;
  name : string prop;
  properties : (string * string) list prop;
  resource_group_name : string prop;
  scope : string prop;
  tags : (string * string) list prop;
  visibility : string prop;
  window : window list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_maintenance_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       in_guest_user_patch_mode =
         Prop.computed __type __id "in_guest_user_patch_mode";
       install_patches = Prop.computed __type __id "install_patches";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       properties = Prop.computed __type __id "properties";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope = Prop.computed __type __id "scope";
       tags = Prop.computed __type __id "tags";
       visibility = Prop.computed __type __id "visibility";
       window = Prop.computed __type __id "window";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_maintenance_configuration
        (azurerm_maintenance_configuration ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
