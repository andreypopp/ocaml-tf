(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_origin_access_control

val aws_cloudfront_origin_access_control :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  origin_access_control_origin_type:string prop ->
  signing_behavior:string prop ->
  signing_protocol:string prop ->
  string ->
  unit
