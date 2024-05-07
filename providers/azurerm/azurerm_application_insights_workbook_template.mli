(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type galleries

val galleries :
  ?order:float prop ->
  ?resource_type:string prop ->
  ?type_:string prop ->
  category:string prop ->
  name:string prop ->
  unit ->
  galleries

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_application_insights_workbook_template

val azurerm_application_insights_workbook_template :
  ?author:string prop ->
  ?id:string prop ->
  ?localized:string prop ->
  ?priority:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  template_data:string prop ->
  galleries:galleries list ->
  unit ->
  azurerm_application_insights_workbook_template

val yojson_of_azurerm_application_insights_workbook_template :
  azurerm_application_insights_workbook_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  author : string prop;
  id : string prop;
  localized : string prop;
  location : string prop;
  name : string prop;
  priority : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  template_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?author:string prop ->
  ?id:string prop ->
  ?localized:string prop ->
  ?priority:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  template_data:string prop ->
  galleries:galleries list ->
  string ->
  t

val make :
  ?author:string prop ->
  ?id:string prop ->
  ?localized:string prop ->
  ?priority:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  template_data:string prop ->
  galleries:galleries list ->
  string ->
  t Tf_core.resource
