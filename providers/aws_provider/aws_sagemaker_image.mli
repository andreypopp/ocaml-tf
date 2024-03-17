(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_image

val aws_sagemaker_image :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  image_name:string prop ->
  role_arn:string prop ->
  string ->
  unit
