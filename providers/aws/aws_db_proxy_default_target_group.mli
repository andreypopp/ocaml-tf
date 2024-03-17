(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_proxy_default_target_group__connection_pool_config
type aws_db_proxy_default_target_group__timeouts
type aws_db_proxy_default_target_group

type t = private {
  arn : string prop;
  db_proxy_name : string prop;
  id : string prop;
  name : string prop;
}

val aws_db_proxy_default_target_group :
  ?id:string prop ->
  ?timeouts:aws_db_proxy_default_target_group__timeouts ->
  db_proxy_name:string prop ->
  connection_pool_config:
    aws_db_proxy_default_target_group__connection_pool_config list ->
  string ->
  t
