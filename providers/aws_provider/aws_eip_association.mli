(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eip_association

type t = private {
  allocation_id : string prop;
  allow_reassociation : bool prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  public_ip : string prop;
}

val aws_eip_association :
  ?allocation_id:string prop ->
  ?allow_reassociation:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?network_interface_id:string prop ->
  ?private_ip_address:string prop ->
  ?public_ip:string prop ->
  string ->
  t
