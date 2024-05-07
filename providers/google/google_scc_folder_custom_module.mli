(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_config__custom_output__properties__value_expression

val custom_config__custom_output__properties__value_expression :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  custom_config__custom_output__properties__value_expression

type custom_config__custom_output__properties

val custom_config__custom_output__properties :
  ?name:string prop ->
  ?value_expression:
    custom_config__custom_output__properties__value_expression list ->
  unit ->
  custom_config__custom_output__properties

type custom_config__custom_output

val custom_config__custom_output :
  ?properties:custom_config__custom_output__properties list ->
  unit ->
  custom_config__custom_output

type custom_config__predicate

val custom_config__predicate :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  custom_config__predicate

type custom_config__resource_selector

val custom_config__resource_selector :
  resource_types:string prop list ->
  unit ->
  custom_config__resource_selector

type custom_config

val custom_config :
  ?description:string prop ->
  ?custom_output:custom_config__custom_output list ->
  recommendation:string prop ->
  severity:string prop ->
  predicate:custom_config__predicate list ->
  resource_selector:custom_config__resource_selector list ->
  unit ->
  custom_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_scc_folder_custom_module

val google_scc_folder_custom_module :
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  enablement_state:string prop ->
  folder:string prop ->
  custom_config:custom_config list ->
  unit ->
  google_scc_folder_custom_module

val yojson_of_google_scc_folder_custom_module :
  google_scc_folder_custom_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  ancestor_module : string prop;
  display_name : string prop;
  enablement_state : string prop;
  folder : string prop;
  id : string prop;
  last_editor : string prop;
  name : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  enablement_state:string prop ->
  folder:string prop ->
  custom_config:custom_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  enablement_state:string prop ->
  folder:string prop ->
  custom_config:custom_config list ->
  string ->
  t Tf_core.resource
