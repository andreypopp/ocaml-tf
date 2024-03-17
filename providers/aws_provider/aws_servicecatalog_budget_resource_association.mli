(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_budget_resource_association__timeouts
type aws_servicecatalog_budget_resource_association

type t = private {
  budget_name : string prop;
  id : string prop;
  resource_id : string prop;
}

val aws_servicecatalog_budget_resource_association :
  ?id:string prop ->
  ?timeouts:aws_servicecatalog_budget_resource_association__timeouts ->
  budget_name:string prop ->
  resource_id:string prop ->
  string ->
  t
