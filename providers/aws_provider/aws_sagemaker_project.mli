(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_project__service_catalog_provisioning_details__provisioning_parameter

type aws_sagemaker_project__service_catalog_provisioning_details
type aws_sagemaker_project

val aws_sagemaker_project :
  ?id:string prop ->
  ?project_description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  project_name:string prop ->
  service_catalog_provisioning_details:
    aws_sagemaker_project__service_catalog_provisioning_details list ->
  string ->
  unit
