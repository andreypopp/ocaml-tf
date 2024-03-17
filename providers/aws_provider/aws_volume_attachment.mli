(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_volume_attachment__timeouts
type aws_volume_attachment

val aws_volume_attachment :
  ?force_detach:bool ->
  ?id:string ->
  ?skip_destroy:bool ->
  ?stop_instance_before_detaching:bool ->
  ?timeouts:aws_volume_attachment__timeouts ->
  device_name:string ->
  instance_id:string ->
  volume_id:string ->
  string ->
  unit
