(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_project_custom_module__custom_config__custom_output__properties__value_expression

type google_scc_project_custom_module__custom_config__custom_output__properties

type google_scc_project_custom_module__custom_config__custom_output
type google_scc_project_custom_module__custom_config__predicate

type google_scc_project_custom_module__custom_config__resource_selector

type google_scc_project_custom_module__custom_config
type google_scc_project_custom_module__timeouts
type google_scc_project_custom_module

type t = private {
  ancestor_module : string prop;
  display_name : string prop;
  enablement_state : string prop;
  id : string prop;
  last_editor : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

val google_scc_project_custom_module :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_scc_project_custom_module__timeouts ->
  display_name:string prop ->
  enablement_state:string prop ->
  custom_config:google_scc_project_custom_module__custom_config list ->
  string ->
  t
