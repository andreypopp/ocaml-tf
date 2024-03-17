(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elb__access_logs
type aws_elb__health_check
type aws_elb__listener
type aws_elb__timeouts
type aws_elb

val aws_elb :
  ?connection_draining:bool ->
  ?connection_draining_timeout:float ->
  ?cross_zone_load_balancing:bool ->
  ?desync_mitigation_mode:string ->
  ?idle_timeout:float ->
  ?tags:(string * string) list ->
  ?timeouts:aws_elb__timeouts ->
  access_logs:aws_elb__access_logs list ->
  health_check:aws_elb__health_check list ->
  listener:aws_elb__listener list ->
  string ->
  unit
