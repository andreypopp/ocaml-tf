(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_image_version

type t = private {
  arn : string prop;
  base_image : string prop;
  container_image : string prop;
  id : string prop;
  image_arn : string prop;
  image_name : string prop;
  version : float prop;
}

val aws_sagemaker_image_version :
  ?id:string prop ->
  base_image:string prop ->
  image_name:string prop ->
  string ->
  t
