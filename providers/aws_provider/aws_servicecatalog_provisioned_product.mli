(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_provisioned_product__provisioning_parameters

type aws_servicecatalog_provisioned_product__stack_set_provisioning_preferences

type aws_servicecatalog_provisioned_product__timeouts

type aws_servicecatalog_provisioned_product__outputs = {
  description : string prop;  (** description *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type aws_servicecatalog_provisioned_product

val aws_servicecatalog_provisioned_product :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?ignore_errors:bool prop ->
  ?notification_arns:string prop list ->
  ?path_id:string prop ->
  ?path_name:string prop ->
  ?product_id:string prop ->
  ?product_name:string prop ->
  ?provisioning_artifact_id:string prop ->
  ?provisioning_artifact_name:string prop ->
  ?retain_physical_resources:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_servicecatalog_provisioned_product__timeouts ->
  name:string prop ->
  provisioning_parameters:
    aws_servicecatalog_provisioned_product__provisioning_parameters
    list ->
  stack_set_provisioning_preferences:
    aws_servicecatalog_provisioned_product__stack_set_provisioning_preferences
    list ->
  string ->
  unit
