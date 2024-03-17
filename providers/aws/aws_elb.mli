(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elb__access_logs
type aws_elb__health_check
type aws_elb__listener
type aws_elb__timeouts
type aws_elb

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  zone_id : string prop;
}

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_elb__timeouts ->
  access_logs:aws_elb__access_logs list ->
  health_check:aws_elb__health_check list ->
  listener:aws_elb__listener list ->
  string ->
  t
