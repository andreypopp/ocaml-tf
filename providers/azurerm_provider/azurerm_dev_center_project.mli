(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_center_project__timeouts
type azurerm_dev_center_project

val azurerm_dev_center_project :
  ?description:string prop ->
  ?id:string prop ->
  ?maximum_dev_boxes_per_user:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dev_center_project__timeouts ->
  dev_center_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
