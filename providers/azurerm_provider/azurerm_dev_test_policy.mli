(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_policy__timeouts
type azurerm_dev_test_policy

val azurerm_dev_test_policy :
  ?description:string ->
  ?fact_data:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dev_test_policy__timeouts ->
  evaluator_type:string ->
  lab_name:string ->
  name:string ->
  policy_set_name:string ->
  resource_group_name:string ->
  threshold:string ->
  string ->
  unit
