(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type install_patches__linux = {
  classifications_to_include : string prop list option; [@option]
      (** classifications_to_include *)
  package_names_mask_to_exclude : string prop list option; [@option]
      (** package_names_mask_to_exclude *)
  package_names_mask_to_include : string prop list option; [@option]
      (** package_names_mask_to_include *)
}
[@@deriving yojson_of]
(** install_patches__linux *)

type install_patches__windows = {
  classifications_to_include : string prop list option; [@option]
      (** classifications_to_include *)
  kb_numbers_to_exclude : string prop list option; [@option]
      (** kb_numbers_to_exclude *)
  kb_numbers_to_include : string prop list option; [@option]
      (** kb_numbers_to_include *)
}
[@@deriving yojson_of]
(** install_patches__windows *)

type install_patches = {
  reboot : string prop option; [@option]  (** reboot *)
  linux : install_patches__linux list;
  windows : install_patches__windows list;
}
[@@deriving yojson_of]
(** install_patches *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type window = {
  duration : string prop option; [@option]  (** duration *)
  expiration_date_time : string prop option; [@option]
      (** expiration_date_time *)
  recur_every : string prop option; [@option]  (** recur_every *)
  start_date_time : string prop;  (** start_date_time *)
  time_zone : string prop;  (** time_zone *)
}
[@@deriving yojson_of]
(** window *)

type azurerm_maintenance_configuration = {
  id : string prop option; [@option]  (** id *)
  in_guest_user_patch_mode : string prop option; [@option]
      (** in_guest_user_patch_mode *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope : string prop;  (** scope *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  visibility : string prop option; [@option]  (** visibility *)
  install_patches : install_patches list;
  timeouts : timeouts option;
  window : window list;
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration *)

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
