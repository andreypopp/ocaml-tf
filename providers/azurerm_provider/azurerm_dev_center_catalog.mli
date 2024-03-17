(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_center_catalog__catalog_adogit
type azurerm_dev_center_catalog__catalog_github
type azurerm_dev_center_catalog__timeouts
type azurerm_dev_center_catalog

type t = private {
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_dev_center_catalog :
  ?id:string prop ->
  ?timeouts:azurerm_dev_center_catalog__timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  catalog_adogit:azurerm_dev_center_catalog__catalog_adogit list ->
  catalog_github:azurerm_dev_center_catalog__catalog_github list ->
  string ->
  t
