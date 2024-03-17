(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_workspace_application_group_association__timeouts

type azurerm_virtual_desktop_workspace_application_group_association

val azurerm_virtual_desktop_workspace_application_group_association :
  ?id:string prop ->
  ?timeouts:
    azurerm_virtual_desktop_workspace_application_group_association__timeouts ->
  application_group_id:string prop ->
  workspace_id:string prop ->
  string ->
  unit
