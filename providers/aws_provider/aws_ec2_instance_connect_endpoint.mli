(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_instance_connect_endpoint__timeouts
type aws_ec2_instance_connect_endpoint

type t = private {
  arn : string prop;
  availability_zone : string prop;
  dns_name : string prop;
  fips_dns_name : string prop;
  id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preserve_client_ip : bool prop;
  security_group_ids : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val aws_ec2_instance_connect_endpoint :
  ?preserve_client_ip:bool prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:aws_ec2_instance_connect_endpoint__timeouts ->
  subnet_id:string prop ->
  string ->
  t
