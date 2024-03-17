(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_link_association__timeouts
type aws_networkmanager_link_association

type t = private {
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
}

val aws_networkmanager_link_association :
  ?id:string prop ->
  ?timeouts:aws_networkmanager_link_association__timeouts ->
  device_id:string prop ->
  global_network_id:string prop ->
  link_id:string prop ->
  string ->
  t
