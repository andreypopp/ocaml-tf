(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dev_center_project

val azurerm_dev_center_project :
  ?description:string prop ->
  ?id:string prop ->
  ?maximum_dev_boxes_per_user:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_dev_center_project

val yojson_of_azurerm_dev_center_project :
  azurerm_dev_center_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  dev_center_id : string prop;
  dev_center_uri : string prop;
  id : string prop;
  location : string prop;
  maximum_dev_boxes_per_user : float prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?maximum_dev_boxes_per_user:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?maximum_dev_boxes_per_user:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
