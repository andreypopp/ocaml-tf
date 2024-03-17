(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy_default_target_group__connection_pool_config
type aws_db_proxy_default_target_group__timeouts
type aws_db_proxy_default_target_group

val aws_db_proxy_default_target_group :
  ?id:string ->
  ?timeouts:aws_db_proxy_default_target_group__timeouts ->
  db_proxy_name:string ->
  connection_pool_config:
    aws_db_proxy_default_target_group__connection_pool_config list ->
  string ->
  unit
