(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_elastic_san_volume_group__encryption
type azurerm_elastic_san_volume_group__identity
type azurerm_elastic_san_volume_group__network_rule
type azurerm_elastic_san_volume_group__timeouts
type azurerm_elastic_san_volume_group

type t = private {
  elastic_san_id : string prop;
  encryption_type : string prop;
  id : string prop;
  name : string prop;
  protocol_type : string prop;
}

val azurerm_elastic_san_volume_group :
  ?encryption_type:string prop ->
  ?id:string prop ->
  ?protocol_type:string prop ->
  ?timeouts:azurerm_elastic_san_volume_group__timeouts ->
  elastic_san_id:string prop ->
  name:string prop ->
  encryption:azurerm_elastic_san_volume_group__encryption list ->
  identity:azurerm_elastic_san_volume_group__identity list ->
  network_rule:azurerm_elastic_san_volume_group__network_rule list ->
  string ->
  t
