(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share__snapshot_schedule
type azurerm_data_share__timeouts
type azurerm_data_share

val azurerm_data_share :
  ?description:string prop ->
  ?id:string prop ->
  ?terms:string prop ->
  ?timeouts:azurerm_data_share__timeouts ->
  account_id:string prop ->
  kind:string prop ->
  name:string prop ->
  snapshot_schedule:azurerm_data_share__snapshot_schedule list ->
  string ->
  unit
