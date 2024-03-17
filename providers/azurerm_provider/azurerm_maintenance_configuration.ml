(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maintenance_configuration__install_patches__linux = {
  classifications_to_include : string prop list option; [@option]
      (** classifications_to_include *)
  package_names_mask_to_exclude : string prop list option; [@option]
      (** package_names_mask_to_exclude *)
  package_names_mask_to_include : string prop list option; [@option]
      (** package_names_mask_to_include *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__install_patches__linux *)

type azurerm_maintenance_configuration__install_patches__windows = {
  classifications_to_include : string prop list option; [@option]
      (** classifications_to_include *)
  kb_numbers_to_exclude : string prop list option; [@option]
      (** kb_numbers_to_exclude *)
  kb_numbers_to_include : string prop list option; [@option]
      (** kb_numbers_to_include *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__install_patches__windows *)

type azurerm_maintenance_configuration__install_patches = {
  reboot : string prop option; [@option]  (** reboot *)
  linux :
    azurerm_maintenance_configuration__install_patches__linux list;
  windows :
    azurerm_maintenance_configuration__install_patches__windows list;
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__install_patches *)

type azurerm_maintenance_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__timeouts *)

type azurerm_maintenance_configuration__window = {
  duration : string prop option; [@option]  (** duration *)
  expiration_date_time : string prop option; [@option]
      (** expiration_date_time *)
  recur_every : string prop option; [@option]  (** recur_every *)
  start_date_time : string prop;  (** start_date_time *)
  time_zone : string prop;  (** time_zone *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__window *)

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
  install_patches :
    azurerm_maintenance_configuration__install_patches list;
  timeouts : azurerm_maintenance_configuration__timeouts option;
  window : azurerm_maintenance_configuration__window list;
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration *)

let azurerm_maintenance_configuration ?id ?in_guest_user_patch_mode
    ?properties ?tags ?visibility ?timeouts ~location ~name
    ~resource_group_name ~scope ~install_patches ~window
    __resource_id =
  let __resource_type = "azurerm_maintenance_configuration" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maintenance_configuration __resource);
  ()
