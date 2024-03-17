(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_application_group__timeouts
type azurerm_virtual_desktop_application_group

type t = private {
  default_desktop_display_name : string prop;
  description : string prop;
  friendly_name : string prop;
  host_pool_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

val azurerm_virtual_desktop_application_group :
  ?default_desktop_display_name:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_virtual_desktop_application_group__timeouts ->
  host_pool_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  string ->
  t
