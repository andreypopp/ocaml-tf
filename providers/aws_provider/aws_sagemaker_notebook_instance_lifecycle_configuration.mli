(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_notebook_instance_lifecycle_configuration

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  on_create : string prop;
  on_start : string prop;
}

val aws_sagemaker_notebook_instance_lifecycle_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?on_create:string prop ->
  ?on_start:string prop ->
  string ->
  t
