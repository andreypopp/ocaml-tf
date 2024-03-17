(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_project__service_catalog_provisioning_details__provisioning_parameter

type aws_sagemaker_project__service_catalog_provisioning_details
type aws_sagemaker_project

val aws_sagemaker_project :
  ?project_description:string ->
  ?tags:(string * string) list ->
  project_name:string ->
  service_catalog_provisioning_details:
    aws_sagemaker_project__service_catalog_provisioning_details list ->
  string ->
  unit
