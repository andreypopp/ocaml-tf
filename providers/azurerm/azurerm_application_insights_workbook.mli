(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_application_insights_workbook

val azurerm_application_insights_workbook :
  ?category:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?source_id:string prop ->
  ?storage_container_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_json:string prop ->
  display_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_application_insights_workbook

val yojson_of_azurerm_application_insights_workbook :
  azurerm_application_insights_workbook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  category : string prop;
  data_json : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_id : string prop;
  storage_container_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?category:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?source_id:string prop ->
  ?storage_container_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_json:string prop ->
  display_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t
