(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_center__identity
type azurerm_dev_center__timeouts
type azurerm_dev_center

type t = private {
  dev_center_uri : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_dev_center :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dev_center__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_dev_center__identity list ->
  string ->
  t
