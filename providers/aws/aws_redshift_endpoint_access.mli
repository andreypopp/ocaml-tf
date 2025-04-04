(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}

type vpc_endpoint = {
  network_interface : vpc_endpoint__network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}

type aws_redshift_endpoint_access

val aws_redshift_endpoint_access :
  ?id:string prop ->
  ?resource_owner:string prop ->
  ?vpc_security_group_ids:string prop list ->
  cluster_identifier:string prop ->
  endpoint_name:string prop ->
  subnet_group_name:string prop ->
  unit ->
  aws_redshift_endpoint_access

val yojson_of_aws_redshift_endpoint_access :
  aws_redshift_endpoint_access -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  cluster_identifier : string prop;
  endpoint_name : string prop;
  id : string prop;
  port : float prop;
  resource_owner : string prop;
  subnet_group_name : string prop;
  vpc_endpoint : vpc_endpoint list prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?resource_owner:string prop ->
  ?vpc_security_group_ids:string prop list ->
  cluster_identifier:string prop ->
  endpoint_name:string prop ->
  subnet_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resource_owner:string prop ->
  ?vpc_security_group_ids:string prop list ->
  cluster_identifier:string prop ->
  endpoint_name:string prop ->
  subnet_group_name:string prop ->
  string ->
  t Tf_core.resource
