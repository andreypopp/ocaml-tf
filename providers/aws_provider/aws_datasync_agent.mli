(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_agent__timeouts
type aws_datasync_agent

val aws_datasync_agent :
  ?activation_key:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?private_link_endpoint:string prop ->
  ?security_group_arns:string prop list ->
  ?subnet_arns:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_endpoint_id:string prop ->
  ?timeouts:aws_datasync_agent__timeouts ->
  string ->
  unit
