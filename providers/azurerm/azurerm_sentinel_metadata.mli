(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type author

val author :
  ?email:string prop ->
  ?link:string prop ->
  ?name:string prop ->
  unit ->
  author

type category

val category :
  ?domains:string prop list ->
  ?verticals:string prop list ->
  unit ->
  category

type source

val source :
  ?id:string prop ->
  ?name:string prop ->
  kind:string prop ->
  unit ->
  source

type support

val support :
  ?email:string prop ->
  ?link:string prop ->
  ?name:string prop ->
  tier:string prop ->
  unit ->
  support

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_metadata

val azurerm_sentinel_metadata :
  ?content_schema_version:string prop ->
  ?custom_version:string prop ->
  ?dependency:string prop ->
  ?first_publish_date:string prop ->
  ?icon_id:string prop ->
  ?id:string prop ->
  ?last_publish_date:string prop ->
  ?preview_images:string prop list ->
  ?preview_images_dark:string prop list ->
  ?providers:string prop list ->
  ?threat_analysis_tactics:string prop list ->
  ?threat_analysis_techniques:string prop list ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  content_id:string prop ->
  kind:string prop ->
  name:string prop ->
  parent_id:string prop ->
  workspace_id:string prop ->
  author:author list ->
  category:category list ->
  source:source list ->
  support:support list ->
  unit ->
  azurerm_sentinel_metadata

val yojson_of_azurerm_sentinel_metadata :
  azurerm_sentinel_metadata -> json

(** RESOURCE REGISTRATION *)

type t = private {
  content_id : string prop;
  content_schema_version : string prop;
  custom_version : string prop;
  dependency : string prop;
  first_publish_date : string prop;
  icon_id : string prop;
  id : string prop;
  kind : string prop;
  last_publish_date : string prop;
  name : string prop;
  parent_id : string prop;
  preview_images : string list prop;
  preview_images_dark : string list prop;
  providers : string list prop;
  threat_analysis_tactics : string list prop;
  threat_analysis_techniques : string list prop;
  version : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_schema_version:string prop ->
  ?custom_version:string prop ->
  ?dependency:string prop ->
  ?first_publish_date:string prop ->
  ?icon_id:string prop ->
  ?id:string prop ->
  ?last_publish_date:string prop ->
  ?preview_images:string prop list ->
  ?preview_images_dark:string prop list ->
  ?providers:string prop list ->
  ?threat_analysis_tactics:string prop list ->
  ?threat_analysis_techniques:string prop list ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  content_id:string prop ->
  kind:string prop ->
  name:string prop ->
  parent_id:string prop ->
  workspace_id:string prop ->
  author:author list ->
  category:category list ->
  source:source list ->
  support:support list ->
  string ->
  t
