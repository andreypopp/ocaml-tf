(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_provisioning_artifact__timeouts
type aws_servicecatalog_provisioning_artifact

val aws_servicecatalog_provisioning_artifact :
  ?accept_language:string ->
  ?active:bool ->
  ?disable_template_validation:bool ->
  ?guidance:string ->
  ?template_physical_id:string ->
  ?template_url:string ->
  ?type_:string ->
  ?timeouts:aws_servicecatalog_provisioning_artifact__timeouts ->
  product_id:string ->
  string ->
  unit
