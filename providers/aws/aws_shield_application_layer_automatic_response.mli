(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_shield_application_layer_automatic_response__timeouts
type aws_shield_application_layer_automatic_response

type t = private {
  action : string prop;
  id : string prop;
  resource_arn : string prop;
}

val aws_shield_application_layer_automatic_response :
  ?timeouts:aws_shield_application_layer_automatic_response__timeouts ->
  action:string prop ->
  resource_arn:string prop ->
  string ->
  t
