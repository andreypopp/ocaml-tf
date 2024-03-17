(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_provisioned_product__provisioning_parameters

type aws_servicecatalog_provisioned_product__stack_set_provisioning_preferences

type aws_servicecatalog_provisioned_product__timeouts

type aws_servicecatalog_provisioned_product__outputs = {
  description : string;  (** description *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type aws_servicecatalog_provisioned_product

val aws_servicecatalog_provisioned_product :
  ?accept_language:string ->
  ?ignore_errors:bool ->
  ?notification_arns:string list ->
  ?path_name:string ->
  ?product_name:string ->
  ?provisioning_artifact_name:string ->
  ?retain_physical_resources:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_servicecatalog_provisioned_product__timeouts ->
  name:string ->
  provisioning_parameters:
    aws_servicecatalog_provisioned_product__provisioning_parameters
    list ->
  stack_set_provisioning_preferences:
    aws_servicecatalog_provisioned_product__stack_set_provisioning_preferences
    list ->
  string ->
  unit
