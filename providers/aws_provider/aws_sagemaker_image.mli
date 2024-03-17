(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_image

val aws_sagemaker_image :
  ?description:string ->
  ?display_name:string ->
  ?tags:(string * string) list ->
  image_name:string ->
  role_arn:string ->
  string ->
  unit
