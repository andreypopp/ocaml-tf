(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_image

val aws_sagemaker_image :
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  image_name:string ->
  role_arn:string ->
  string ->
  unit
