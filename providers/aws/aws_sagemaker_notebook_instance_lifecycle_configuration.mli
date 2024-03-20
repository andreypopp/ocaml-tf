(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_notebook_instance_lifecycle_configuration

val aws_sagemaker_notebook_instance_lifecycle_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?on_create:string prop ->
  ?on_start:string prop ->
  unit ->
  aws_sagemaker_notebook_instance_lifecycle_configuration

val yojson_of_aws_sagemaker_notebook_instance_lifecycle_configuration :
  aws_sagemaker_notebook_instance_lifecycle_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  on_create : string prop;
  on_start : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?on_create:string prop ->
  ?on_start:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?on_create:string prop ->
  ?on_start:string prop ->
  string ->
  t Tf_core.resource
