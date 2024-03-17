(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_workbook__identity
type azurerm_application_insights_workbook__timeouts
type azurerm_application_insights_workbook

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

val azurerm_application_insights_workbook :
  ?category:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?source_id:string prop ->
  ?storage_container_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_application_insights_workbook__timeouts ->
  data_json:string prop ->
  display_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_application_insights_workbook__identity list ->
  string ->
  t
