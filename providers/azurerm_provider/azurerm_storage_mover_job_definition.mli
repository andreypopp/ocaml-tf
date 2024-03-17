(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_job_definition__timeouts
type azurerm_storage_mover_job_definition

val azurerm_storage_mover_job_definition :
  ?agent_name:string ->
  ?description:string ->
  ?source_sub_path:string ->
  ?target_sub_path:string ->
  ?timeouts:azurerm_storage_mover_job_definition__timeouts ->
  copy_mode:string ->
  name:string ->
  source_name:string ->
  storage_mover_project_id:string ->
  target_name:string ->
  string ->
  unit
