(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy_endpoint__timeouts
type aws_db_proxy_endpoint

val aws_db_proxy_endpoint :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_role:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:aws_db_proxy_endpoint__timeouts ->
  db_proxy_endpoint_name:string prop ->
  db_proxy_name:string prop ->
  vpc_subnet_ids:string prop list ->
  string ->
  unit
