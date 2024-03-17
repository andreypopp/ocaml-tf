(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy_endpoint__timeouts
type aws_db_proxy_endpoint

val aws_db_proxy_endpoint :
  ?tags:(string * string) list ->
  ?target_role:string ->
  ?timeouts:aws_db_proxy_endpoint__timeouts ->
  db_proxy_endpoint_name:string ->
  db_proxy_name:string ->
  vpc_subnet_ids:string list ->
  string ->
  unit
