(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type install_patches__linux

val install_patches__linux :
  ?classifications_to_include:string prop list ->
  ?package_names_mask_to_exclude:string prop list ->
  ?package_names_mask_to_include:string prop list ->
  unit ->
  install_patches__linux

type install_patches__windows

val install_patches__windows :
  ?classifications_to_include:string prop list ->
  ?kb_numbers_to_exclude:string prop list ->
  ?kb_numbers_to_include:string prop list ->
  unit ->
  install_patches__windows

type install_patches

val install_patches :
  ?reboot:string prop ->
  ?linux:install_patches__linux list ->
  ?windows:install_patches__windows list ->
  unit ->
  install_patches

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type window

val window :
  ?duration:string prop ->
  ?expiration_date_time:string prop ->
  ?recur_every:string prop ->
  start_date_time:string prop ->
  time_zone:string prop ->
  unit ->
  window

type azurerm_maintenance_configuration

val azurerm_maintenance_configuration :
  ?id:string prop ->
  ?in_guest_user_patch_mode:string prop ->
  ?properties:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?visibility:string prop ->
  ?install_patches:install_patches list ->
  ?timeouts:timeouts ->
  ?window:window list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope:string prop ->
  unit ->
  azurerm_maintenance_configuration

val yojson_of_azurerm_maintenance_configuration :
  azurerm_maintenance_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?in_guest_user_patch_mode:string prop ->
  ?properties:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?visibility:string prop ->
  ?install_patches:install_patches list ->
  ?timeouts:timeouts ->
  ?window:window list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?in_guest_user_patch_mode:string prop ->
  ?properties:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?visibility:string prop ->
  ?install_patches:install_patches list ->
  ?timeouts:timeouts ->
  ?window:window list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
