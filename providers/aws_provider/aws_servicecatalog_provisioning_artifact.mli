(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_provisioning_artifact__timeouts
type aws_servicecatalog_provisioning_artifact

val aws_servicecatalog_provisioning_artifact :
  ?accept_language:string prop ->
  ?active:bool prop ->
  ?description:string prop ->
  ?disable_template_validation:bool prop ->
  ?guidance:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?template_physical_id:string prop ->
  ?template_url:string prop ->
  ?type_:string prop ->
  ?timeouts:aws_servicecatalog_provisioning_artifact__timeouts ->
  product_id:string prop ->
  string ->
  unit
