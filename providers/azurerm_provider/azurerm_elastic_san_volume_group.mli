(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_elastic_san_volume_group__encryption
type azurerm_elastic_san_volume_group__identity
type azurerm_elastic_san_volume_group__network_rule
type azurerm_elastic_san_volume_group__timeouts
type azurerm_elastic_san_volume_group

val azurerm_elastic_san_volume_group :
  ?encryption_type:string ->
  ?id:string ->
  ?protocol_type:string ->
  ?timeouts:azurerm_elastic_san_volume_group__timeouts ->
  elastic_san_id:string ->
  name:string ->
  encryption:azurerm_elastic_san_volume_group__encryption list ->
  identity:azurerm_elastic_san_volume_group__identity list ->
  network_rule:azurerm_elastic_san_volume_group__network_rule list ->
  string ->
  unit
