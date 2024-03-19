(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_eip_association

val aws_eip_association :
  ?allocation_id:string prop ->
  ?allow_reassociation:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?network_interface_id:string prop ->
  ?private_ip_address:string prop ->
  ?public_ip:string prop ->
  unit ->
  aws_eip_association

val yojson_of_aws_eip_association : aws_eip_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allocation_id : string prop;
  allow_reassociation : bool prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  public_ip : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocation_id:string prop ->
  ?allow_reassociation:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?network_interface_id:string prop ->
  ?private_ip_address:string prop ->
  ?public_ip:string prop ->
  string ->
  t
