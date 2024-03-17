(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share__snapshot_schedule
type azurerm_data_share__timeouts
type azurerm_data_share

val azurerm_data_share :
  ?description:string ->
  ?id:string ->
  ?terms:string ->
  ?timeouts:azurerm_data_share__timeouts ->
  account_id:string ->
  kind:string ->
  name:string ->
  snapshot_schedule:azurerm_data_share__snapshot_schedule list ->
  string ->
  unit
