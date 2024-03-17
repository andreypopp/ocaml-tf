(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_product__provisioning_artifact_parameters
type aws_servicecatalog_product__timeouts
type aws_servicecatalog_product

val aws_servicecatalog_product :
  ?accept_language:string ->
  ?description:string ->
  ?distributor:string ->
  ?id:string ->
  ?support_description:string ->
  ?support_email:string ->
  ?support_url:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_servicecatalog_product__timeouts ->
  name:string ->
  owner:string ->
  type_:string ->
  provisioning_artifact_parameters:
    aws_servicecatalog_product__provisioning_artifact_parameters list ->
  string ->
  unit
