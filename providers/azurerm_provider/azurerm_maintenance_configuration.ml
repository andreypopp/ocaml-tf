(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maintenance_configuration__install_patches__linux = {
  classifications_to_include : string list option; [@option]
      (** classifications_to_include *)
  package_names_mask_to_exclude : string list option; [@option]
      (** package_names_mask_to_exclude *)
  package_names_mask_to_include : string list option; [@option]
      (** package_names_mask_to_include *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__install_patches__linux *)

type azurerm_maintenance_configuration__install_patches__windows = {
  classifications_to_include : string list option; [@option]
      (** classifications_to_include *)
  kb_numbers_to_exclude : string list option; [@option]
      (** kb_numbers_to_exclude *)
  kb_numbers_to_include : string list option; [@option]
      (** kb_numbers_to_include *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__install_patches__windows *)

type azurerm_maintenance_configuration__install_patches = {
  reboot : string option; [@option]  (** reboot *)
  linux :
    azurerm_maintenance_configuration__install_patches__linux list;
  windows :
    azurerm_maintenance_configuration__install_patches__windows list;
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__install_patches *)

type azurerm_maintenance_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__timeouts *)

type azurerm_maintenance_configuration__window = {
  duration : string option; [@option]  (** duration *)
  expiration_date_time : string option; [@option]
      (** expiration_date_time *)
  recur_every : string option; [@option]  (** recur_every *)
  start_date_time : string;  (** start_date_time *)
  time_zone : string;  (** time_zone *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_configuration__window *)

type azurerm_maintenance_configuration = {
  id : string option; [@option]  (** id *)
  in_guest_user_patch_mode : string option; [@option]
      (** in_guest_user_patch_mode *)
  location : string;  (** location *)
  name : string;  (** name *)
  properties : (string * string) list option; [@option]
      (** properties *)
  resource_group_name : string;  (** resource_group_name *)
  scope : string;  (** scope *)
  tags : (string * string) list option; [@option]  (** tags *)
  visibility : string option; [@option]  (** visibility *)
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
