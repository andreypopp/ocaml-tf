(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_center_catalog__catalog_adogit
type azurerm_dev_center_catalog__catalog_github
type azurerm_dev_center_catalog__timeouts
type azurerm_dev_center_catalog

val azurerm_dev_center_catalog :
  ?timeouts:azurerm_dev_center_catalog__timeouts ->
  dev_center_id:string ->
  name:string ->
  resource_group_name:string ->
  catalog_adogit:azurerm_dev_center_catalog__catalog_adogit list ->
  catalog_github:azurerm_dev_center_catalog__catalog_github list ->
  string ->
  unit
