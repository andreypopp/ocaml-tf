(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type authorization

val authorization :
  role_definition_id:string prop ->
  service_principal_id:string prop ->
  unit ->
  authorization

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_managed_application_definition

val azurerm_managed_application_definition :
  ?create_ui_definition:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?main_template:string prop ->
  ?package_enabled:bool prop ->
  ?package_file_uri:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  lock_level:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  authorization:authorization list ->
  unit ->
  azurerm_managed_application_definition

val yojson_of_azurerm_managed_application_definition :
  azurerm_managed_application_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_ui_definition : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  lock_level : string prop;
  main_template : string prop;
  name : string prop;
  package_enabled : bool prop;
  package_file_uri : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_ui_definition:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?main_template:string prop ->
  ?package_enabled:bool prop ->
  ?package_file_uri:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  lock_level:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  authorization:authorization list ->
  string ->
  t
