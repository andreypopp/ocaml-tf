(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dev_test_policy

val azurerm_dev_test_policy :
  ?description:string prop ->
  ?fact_data:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  evaluator_type:string prop ->
  lab_name:string prop ->
  name:string prop ->
  policy_set_name:string prop ->
  resource_group_name:string prop ->
  threshold:string prop ->
  unit ->
  azurerm_dev_test_policy

val yojson_of_azurerm_dev_test_policy :
  azurerm_dev_test_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  evaluator_type : string prop;
  fact_data : string prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  policy_set_name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  threshold : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?fact_data:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  evaluator_type:string prop ->
  lab_name:string prop ->
  name:string prop ->
  policy_set_name:string prop ->
  resource_group_name:string prop ->
  threshold:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?fact_data:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  evaluator_type:string prop ->
  lab_name:string prop ->
  name:string prop ->
  policy_set_name:string prop ->
  resource_group_name:string prop ->
  threshold:string prop ->
  string ->
  t Tf_core.resource
