(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy_endpoint__timeouts
type aws_db_proxy_endpoint

val aws_db_proxy_endpoint :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?target_role:string ->
  ?vpc_security_group_ids:string list ->
  ?timeouts:aws_db_proxy_endpoint__timeouts ->
  db_proxy_endpoint_name:string ->
  db_proxy_name:string ->
  vpc_subnet_ids:string list ->
  string ->
  unit
