(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_policy__timeouts
type azurerm_dev_test_policy

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

val azurerm_dev_test_policy :
  ?description:string prop ->
  ?fact_data:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dev_test_policy__timeouts ->
  evaluator_type:string prop ->
  lab_name:string prop ->
  name:string prop ->
  policy_set_name:string prop ->
  resource_group_name:string prop ->
  threshold:string prop ->
  string ->
  t
