(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_controltower_control__timeouts
type aws_controltower_control

type t = private {
  control_identifier : string prop;
  id : string prop;
  target_identifier : string prop;
}

val aws_controltower_control :
  ?id:string prop ->
  ?timeouts:aws_controltower_control__timeouts ->
  control_identifier:string prop ->
  target_identifier:string prop ->
  string ->
  t
