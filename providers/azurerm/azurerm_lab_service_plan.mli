(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lab_service_plan__default_auto_shutdown
type azurerm_lab_service_plan__default_connection
type azurerm_lab_service_plan__support
type azurerm_lab_service_plan__timeouts
type azurerm_lab_service_plan

type t = private {
  allowed_regions : string list prop;
  default_network_subnet_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_gallery_id : string prop;
  tags : (string * string) list prop;
}

val azurerm_lab_service_plan :
  ?default_network_subnet_id:string prop ->
  ?id:string prop ->
  ?shared_gallery_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_lab_service_plan__timeouts ->
  allowed_regions:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  default_auto_shutdown:
    azurerm_lab_service_plan__default_auto_shutdown list ->
  default_connection:
    azurerm_lab_service_plan__default_connection list ->
  support:azurerm_lab_service_plan__support list ->
  string ->
  t
