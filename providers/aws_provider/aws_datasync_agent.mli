(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_agent__timeouts
type aws_datasync_agent

val aws_datasync_agent :
  ?activation_key:string ->
  ?id:string ->
  ?ip_address:string ->
  ?name:string ->
  ?private_link_endpoint:string ->
  ?security_group_arns:string list ->
  ?subnet_arns:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_endpoint_id:string ->
  ?timeouts:aws_datasync_agent__timeouts ->
  string ->
  unit
