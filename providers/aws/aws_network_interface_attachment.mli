(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_network_interface_attachment

val aws_network_interface_attachment :
  ?id:string prop ->
  device_index:float prop ->
  instance_id:string prop ->
  network_interface_id:string prop ->
  unit ->
  aws_network_interface_attachment

val yojson_of_aws_network_interface_attachment :
  aws_network_interface_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  attachment_id : string prop;
  device_index : float prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  device_index:float prop ->
  instance_id:string prop ->
  network_interface_id:string prop ->
  string ->
  t
