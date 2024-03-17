(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_machine_extension__timeouts
type azurerm_arc_machine_extension

val azurerm_arc_machine_extension :
  ?automatic_upgrade_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?settings:string prop ->
  ?tags:(string * string prop) list ->
  ?type_handler_version:string prop ->
  ?timeouts:azurerm_arc_machine_extension__timeouts ->
  arc_machine_id:string prop ->
  location:string prop ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  string ->
  unit
