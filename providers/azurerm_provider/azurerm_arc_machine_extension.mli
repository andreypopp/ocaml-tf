(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_machine_extension__timeouts
type azurerm_arc_machine_extension

val azurerm_arc_machine_extension :
  ?automatic_upgrade_enabled:bool ->
  ?force_update_tag:string ->
  ?protected_settings:string ->
  ?settings:string ->
  ?tags:(string * string) list ->
  ?type_handler_version:string ->
  ?timeouts:azurerm_arc_machine_extension__timeouts ->
  arc_machine_id:string ->
  location:string ->
  name:string ->
  publisher:string ->
  type_:string ->
  string ->
  unit
