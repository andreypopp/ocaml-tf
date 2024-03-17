(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy__auth
type aws_db_proxy__timeouts
type aws_db_proxy

val aws_db_proxy :
  ?debug_logging:bool ->
  ?require_tls:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_db_proxy__timeouts ->
  engine_family:string ->
  name:string ->
  role_arn:string ->
  vpc_subnet_ids:string list ->
  auth:aws_db_proxy__auth list ->
  string ->
  unit
