(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_logs

val access_logs :
  ?bucket_prefix:string prop ->
  ?enabled:bool prop ->
  ?interval:float prop ->
  bucket:string prop ->
  unit ->
  access_logs

type health_check

val health_check :
  healthy_threshold:float prop ->
  interval:float prop ->
  target:string prop ->
  timeout:float prop ->
  unhealthy_threshold:float prop ->
  unit ->
  health_check

type listener

val listener :
  ?ssl_certificate_id:string prop ->
  instance_port:float prop ->
  instance_protocol:string prop ->
  lb_port:float prop ->
  lb_protocol:string prop ->
  unit ->
  listener

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_elb

val aws_elb :
  ?availability_zones:string prop list ->
  ?connection_draining:bool prop ->
  ?connection_draining_timeout:float prop ->
  ?cross_zone_load_balancing:bool prop ->
  ?desync_mitigation_mode:string prop ->
  ?id:string prop ->
  ?idle_timeout:float prop ->
  ?instances:string prop list ->
  ?internal:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?security_groups:string prop list ->
  ?source_security_group:string prop ->
  ?subnets:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?access_logs:access_logs list ->
  ?health_check:health_check list ->
  ?timeouts:timeouts ->
  listener:listener list ->
  unit ->
  aws_elb

val yojson_of_aws_elb : aws_elb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zones : string list prop;
  connection_draining : bool prop;
  connection_draining_timeout : float prop;
  cross_zone_load_balancing : bool prop;
  desync_mitigation_mode : string prop;
  dns_name : string prop;
  id : string prop;
  idle_timeout : float prop;
  instances : string list prop;
  internal : bool prop;
  name : string prop;
  name_prefix : string prop;
  security_groups : string list prop;
  source_security_group : string prop;
  source_security_group_id : string prop;
  subnets : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zones:string prop list ->
  ?connection_draining:bool prop ->
  ?connection_draining_timeout:float prop ->
  ?cross_zone_load_balancing:bool prop ->
  ?desync_mitigation_mode:string prop ->
  ?id:string prop ->
  ?idle_timeout:float prop ->
  ?instances:string prop list ->
  ?internal:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?security_groups:string prop list ->
  ?source_security_group:string prop ->
  ?subnets:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?access_logs:access_logs list ->
  ?health_check:health_check list ->
  ?timeouts:timeouts ->
  listener:listener list ->
  string ->
  t

val make :
  ?availability_zones:string prop list ->
  ?connection_draining:bool prop ->
  ?connection_draining_timeout:float prop ->
  ?cross_zone_load_balancing:bool prop ->
  ?desync_mitigation_mode:string prop ->
  ?id:string prop ->
  ?idle_timeout:float prop ->
  ?instances:string prop list ->
  ?internal:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?security_groups:string prop list ->
  ?source_security_group:string prop ->
  ?subnets:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?access_logs:access_logs list ->
  ?health_check:health_check list ->
  ?timeouts:timeouts ->
  listener:listener list ->
  string ->
  t Tf_core.resource
