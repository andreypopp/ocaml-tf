(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_product__provisioning_artifact_parameters
type aws_servicecatalog_product__timeouts
type aws_servicecatalog_product

val aws_servicecatalog_product :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?distributor:string prop ->
  ?id:string prop ->
  ?support_description:string prop ->
  ?support_email:string prop ->
  ?support_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_servicecatalog_product__timeouts ->
  name:string prop ->
  owner:string prop ->
  type_:string prop ->
  provisioning_artifact_parameters:
    aws_servicecatalog_product__provisioning_artifact_parameters list ->
  string ->
  unit
