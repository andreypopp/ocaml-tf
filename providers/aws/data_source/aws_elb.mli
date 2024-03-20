(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_logs = {
  bucket : string prop;  (** bucket *)
  bucket_prefix : string prop;  (** bucket_prefix *)
  enabled : bool prop;  (** enabled *)
  interval : float prop;  (** interval *)
}

type health_check = {
  healthy_threshold : float prop;  (** healthy_threshold *)
  interval : float prop;  (** interval *)
  target : string prop;  (** target *)
  timeout : float prop;  (** timeout *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}

type listener = {
  instance_port : float prop;  (** instance_port *)
  instance_protocol : string prop;  (** instance_protocol *)
  lb_port : float prop;  (** lb_port *)
  lb_protocol : string prop;  (** lb_protocol *)
  ssl_certificate_id : string prop;  (** ssl_certificate_id *)
}

type aws_elb

val aws_elb :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_elb

val yojson_of_aws_elb : aws_elb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_logs : access_logs list prop;
  arn : string prop;
  availability_zones : string list prop;
  connection_draining : bool prop;
  connection_draining_timeout : float prop;
  cross_zone_load_balancing : bool prop;
  desync_mitigation_mode : string prop;
  dns_name : string prop;
  health_check : health_check list prop;
  id : string prop;
  idle_timeout : float prop;
  instances : string list prop;
  internal : bool prop;
  listener : listener list prop;
  name : string prop;
  security_groups : string list prop;
  source_security_group : string prop;
  source_security_group_id : string prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
