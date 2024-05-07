(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type install_patches__windows = {
  classifications_to_include : string prop list;
      (** classifications_to_include *)
  kb_numbers_to_exclude : string prop list;
      (** kb_numbers_to_exclude *)
  kb_numbers_to_include : string prop list;
      (** kb_numbers_to_include *)
}

type install_patches__linux = {
  classifications_to_include : string prop list;
      (** classifications_to_include *)
  package_names_mask_to_exclude : string prop list;
      (** package_names_mask_to_exclude *)
  package_names_mask_to_include : string prop list;
      (** package_names_mask_to_include *)
}

type install_patches = {
  linux : install_patches__linux list;  (** linux *)
  reboot : string prop;  (** reboot *)
  windows : install_patches__windows list;  (** windows *)
}

type window = {
  duration : string prop;  (** duration *)
  expiration_date_time : string prop;  (** expiration_date_time *)
  recur_every : string prop;  (** recur_every *)
  start_date_time : string prop;  (** start_date_time *)
  time_zone : string prop;  (** time_zone *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_maintenance_configuration

val azurerm_maintenance_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_maintenance_configuration

val yojson_of_azurerm_maintenance_configuration :
  azurerm_maintenance_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
