(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_application_definition__authorization
type azurerm_managed_application_definition__timeouts
type azurerm_managed_application_definition

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

val azurerm_managed_application_definition :
  ?create_ui_definition:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?main_template:string prop ->
  ?package_enabled:bool prop ->
  ?package_file_uri:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_managed_application_definition__timeouts ->
  display_name:string prop ->
  location:string prop ->
  lock_level:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  authorization:
    azurerm_managed_application_definition__authorization list ->
  string ->
  t
