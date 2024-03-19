(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_mover_job_definition

val azurerm_storage_mover_job_definition :
  ?agent_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?source_sub_path:string prop ->
  ?target_sub_path:string prop ->
  ?timeouts:timeouts ->
  copy_mode:string prop ->
  name:string prop ->
  source_name:string prop ->
  storage_mover_project_id:string prop ->
  target_name:string prop ->
  unit ->
  azurerm_storage_mover_job_definition

val yojson_of_azurerm_storage_mover_job_definition :
  azurerm_storage_mover_job_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  agent_name : string prop;
  copy_mode : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  source_name : string prop;
  source_sub_path : string prop;
  storage_mover_project_id : string prop;
  target_name : string prop;
  target_sub_path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?agent_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?source_sub_path:string prop ->
  ?target_sub_path:string prop ->
  ?timeouts:timeouts ->
  copy_mode:string prop ->
  name:string prop ->
  source_name:string prop ->
  storage_mover_project_id:string prop ->
  target_name:string prop ->
  string ->
  t
