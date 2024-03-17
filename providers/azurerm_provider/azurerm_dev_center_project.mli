(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_center_project__timeouts
type azurerm_dev_center_project

val azurerm_dev_center_project :
  ?description:string ->
  ?maximum_dev_boxes_per_user:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dev_center_project__timeouts ->
  dev_center_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
