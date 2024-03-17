(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_folder_custom_module__custom_config__custom_output__properties__value_expression

type google_scc_folder_custom_module__custom_config__custom_output__properties

type google_scc_folder_custom_module__custom_config__custom_output
type google_scc_folder_custom_module__custom_config__predicate
type google_scc_folder_custom_module__custom_config__resource_selector
type google_scc_folder_custom_module__custom_config
type google_scc_folder_custom_module__timeouts
type google_scc_folder_custom_module

val google_scc_folder_custom_module :
  ?id:string ->
  ?timeouts:google_scc_folder_custom_module__timeouts ->
  display_name:string ->
  enablement_state:string ->
  folder:string ->
  custom_config:google_scc_folder_custom_module__custom_config list ->
  string ->
  unit
