(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint__vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}

type endpoint__vpc_endpoint = {
  network_interface : endpoint__vpc_endpoint__network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}

type endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
  vpc_endpoint : endpoint__vpc_endpoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc_endpoint *)
}

type config_parameter

val config_parameter :
  parameter_key:string prop ->
  parameter_value:string prop ->
  unit ->
  config_parameter

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_redshiftserverless_workgroup

val aws_redshiftserverless_workgroup :
  ?base_capacity:float prop ->
  ?enhanced_vpc_routing:bool prop ->
  ?id:string prop ->
  ?max_capacity:float prop ->
  ?port:float prop ->
  ?publicly_accessible:bool prop ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  namespace_name:string prop ->
  workgroup_name:string prop ->
  config_parameter:config_parameter list ->
  unit ->
  aws_redshiftserverless_workgroup

val yojson_of_aws_redshiftserverless_workgroup :
  aws_redshiftserverless_workgroup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  base_capacity : float prop;
  endpoint : endpoint list prop;
  enhanced_vpc_routing : bool prop;
  id : string prop;
  max_capacity : float prop;
  namespace_name : string prop;
  port : float prop;
  publicly_accessible : bool prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  workgroup_id : string prop;
  workgroup_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_capacity:float prop ->
  ?enhanced_vpc_routing:bool prop ->
  ?id:string prop ->
  ?max_capacity:float prop ->
  ?port:float prop ->
  ?publicly_accessible:bool prop ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  namespace_name:string prop ->
  workgroup_name:string prop ->
  config_parameter:config_parameter list ->
  string ->
  t

val make :
  ?base_capacity:float prop ->
  ?enhanced_vpc_routing:bool prop ->
  ?id:string prop ->
  ?max_capacity:float prop ->
  ?port:float prop ->
  ?publicly_accessible:bool prop ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  namespace_name:string prop ->
  workgroup_name:string prop ->
  config_parameter:config_parameter list ->
  string ->
  t Tf_core.resource
