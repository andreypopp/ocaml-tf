(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy__auth
type aws_db_proxy__timeouts
type aws_db_proxy

val aws_db_proxy :
  ?debug_logging:bool prop ->
  ?id:string prop ->
  ?idle_client_timeout:float prop ->
  ?require_tls:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:aws_db_proxy__timeouts ->
  engine_family:string prop ->
  name:string prop ->
  role_arn:string prop ->
  vpc_subnet_ids:string prop list ->
  auth:aws_db_proxy__auth list ->
  string ->
  unit
