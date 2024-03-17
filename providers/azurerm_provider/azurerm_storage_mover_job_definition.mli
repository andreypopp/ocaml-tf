(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_job_definition__timeouts
type azurerm_storage_mover_job_definition

val azurerm_storage_mover_job_definition :
  ?agent_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?source_sub_path:string prop ->
  ?target_sub_path:string prop ->
  ?timeouts:azurerm_storage_mover_job_definition__timeouts ->
  copy_mode:string prop ->
  name:string prop ->
  source_name:string prop ->
  storage_mover_project_id:string prop ->
  target_name:string prop ->
  string ->
  unit
