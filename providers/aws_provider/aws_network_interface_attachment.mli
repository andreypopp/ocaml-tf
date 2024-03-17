(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_interface_attachment

type t = private {
  attachment_id : string prop;
  device_index : float prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  status : string prop;
}

val aws_network_interface_attachment :
  ?id:string prop ->
  device_index:float prop ->
  instance_id:string prop ->
  network_interface_id:string prop ->
  string ->
  t
