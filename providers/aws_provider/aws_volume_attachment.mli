(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_volume_attachment__timeouts
type aws_volume_attachment

val aws_volume_attachment :
  ?force_detach:bool prop ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?stop_instance_before_detaching:bool prop ->
  ?timeouts:aws_volume_attachment__timeouts ->
  device_name:string prop ->
  instance_id:string prop ->
  volume_id:string prop ->
  string ->
  unit
