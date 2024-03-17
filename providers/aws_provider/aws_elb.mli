(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elb__access_logs
type aws_elb__health_check
type aws_elb__listener
type aws_elb__timeouts
type aws_elb

val aws_elb :
  ?availability_zones:string list ->
  ?connection_draining:bool ->
  ?connection_draining_timeout:float ->
  ?cross_zone_load_balancing:bool ->
  ?desync_mitigation_mode:string ->
  ?id:string ->
  ?idle_timeout:float ->
  ?instances:string list ->
  ?internal:bool ->
  ?name:string ->
  ?name_prefix:string ->
  ?security_groups:string list ->
  ?source_security_group:string ->
  ?subnets:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_elb__timeouts ->
  access_logs:aws_elb__access_logs list ->
  health_check:aws_elb__health_check list ->
  listener:aws_elb__listener list ->
  string ->
  unit
