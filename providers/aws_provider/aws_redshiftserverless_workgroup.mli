(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftserverless_workgroup__config_parameter
type aws_redshiftserverless_workgroup__timeouts

type aws_redshiftserverless_workgroup__endpoint__vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}

type aws_redshiftserverless_workgroup__endpoint__vpc_endpoint = {
  network_interface :
    aws_redshiftserverless_workgroup__endpoint__vpc_endpoint__network_interface
    list;
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}

type aws_redshiftserverless_workgroup__endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
  vpc_endpoint :
    aws_redshiftserverless_workgroup__endpoint__vpc_endpoint list;
      (** vpc_endpoint *)
}

type aws_redshiftserverless_workgroup

type t = private {
  arn : string prop;
  base_capacity : float prop;
  endpoint : aws_redshiftserverless_workgroup__endpoint list prop;
  enhanced_vpc_routing : bool prop;
  id : string prop;
  max_capacity : float prop;
  namespace_name : string prop;
  port : float prop;
  publicly_accessible : bool prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workgroup_id : string prop;
  workgroup_name : string prop;
}

val aws_redshiftserverless_workgroup :
  ?base_capacity:float prop ->
  ?enhanced_vpc_routing:bool prop ->
  ?id:string prop ->
  ?max_capacity:float prop ->
  ?port:float prop ->
  ?publicly_accessible:bool prop ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_redshiftserverless_workgroup__timeouts ->
  namespace_name:string prop ->
  workgroup_name:string prop ->
  config_parameter:
    aws_redshiftserverless_workgroup__config_parameter list ->
  string ->
  t
