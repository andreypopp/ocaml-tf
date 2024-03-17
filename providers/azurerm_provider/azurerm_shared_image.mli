(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_shared_image__identifier
type azurerm_shared_image__purchase_plan
type azurerm_shared_image__timeouts
type azurerm_shared_image

val azurerm_shared_image :
  ?accelerated_network_support_enabled:bool ->
  ?architecture:string ->
  ?confidential_vm_enabled:bool ->
  ?confidential_vm_supported:bool ->
  ?description:string ->
  ?disk_types_not_allowed:string list ->
  ?end_of_life_date:string ->
  ?eula:string ->
  ?hyper_v_generation:string ->
  ?id:string ->
  ?max_recommended_memory_in_gb:float ->
  ?max_recommended_vcpu_count:float ->
  ?min_recommended_memory_in_gb:float ->
  ?min_recommended_vcpu_count:float ->
  ?privacy_statement_uri:string ->
  ?release_note_uri:string ->
  ?specialized:bool ->
  ?tags:(string * string) list ->
  ?trusted_launch_enabled:bool ->
  ?trusted_launch_supported:bool ->
  ?timeouts:azurerm_shared_image__timeouts ->
  gallery_name:string ->
  location:string ->
  name:string ->
  os_type:string ->
  resource_group_name:string ->
  identifier:azurerm_shared_image__identifier list ->
  purchase_plan:azurerm_shared_image__purchase_plan list ->
  string ->
  unit
