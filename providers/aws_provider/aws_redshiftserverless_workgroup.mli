(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftserverless_workgroup__config_parameter
type aws_redshiftserverless_workgroup__timeouts

type aws_redshiftserverless_workgroup__endpoint__vpc_endpoint__network_interface = {
  availability_zone : string;  (** availability_zone *)
  network_interface_id : string;  (** network_interface_id *)
  private_ip_address : string;  (** private_ip_address *)
  subnet_id : string;  (** subnet_id *)
}

type aws_redshiftserverless_workgroup__endpoint__vpc_endpoint = {
  network_interface :
    aws_redshiftserverless_workgroup__endpoint__vpc_endpoint__network_interface
    list;
      (** network_interface *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_id : string;  (** vpc_id *)
}

type aws_redshiftserverless_workgroup__endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
  vpc_endpoint :
    aws_redshiftserverless_workgroup__endpoint__vpc_endpoint list;
      (** vpc_endpoint *)
}

type aws_redshiftserverless_workgroup

val aws_redshiftserverless_workgroup :
  ?base_capacity:float ->
  ?enhanced_vpc_routing:bool ->
  ?id:string ->
  ?max_capacity:float ->
  ?port:float ->
  ?publicly_accessible:bool ->
  ?security_group_ids:string list ->
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_redshiftserverless_workgroup__timeouts ->
  namespace_name:string ->
  workgroup_name:string ->
  config_parameter:
    aws_redshiftserverless_workgroup__config_parameter list ->
  string ->
  unit
