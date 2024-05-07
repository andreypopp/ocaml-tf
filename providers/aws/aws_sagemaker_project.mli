(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type service_catalog_provisioning_details__provisioning_parameter

val service_catalog_provisioning_details__provisioning_parameter :
  ?value:string prop ->
  key:string prop ->
  unit ->
  service_catalog_provisioning_details__provisioning_parameter

type service_catalog_provisioning_details

val service_catalog_provisioning_details :
  ?path_id:string prop ->
  ?provisioning_artifact_id:string prop ->
  ?provisioning_parameter:
    service_catalog_provisioning_details__provisioning_parameter list ->
  product_id:string prop ->
  unit ->
  service_catalog_provisioning_details

type aws_sagemaker_project

val aws_sagemaker_project :
  ?id:string prop ->
  ?project_description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  project_name:string prop ->
  service_catalog_provisioning_details:
    service_catalog_provisioning_details list ->
  unit ->
  aws_sagemaker_project

val yojson_of_aws_sagemaker_project : aws_sagemaker_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  project_description : string prop;
  project_id : string prop;
  project_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project_description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  project_name:string prop ->
  service_catalog_provisioning_details:
    service_catalog_provisioning_details list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project_description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  project_name:string prop ->
  service_catalog_provisioning_details:
    service_catalog_provisioning_details list ->
  string ->
  t Tf_core.resource
