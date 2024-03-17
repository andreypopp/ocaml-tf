(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_service_discovery_private_dns_namespace

val aws_service_discovery_private_dns_namespace :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  vpc:string ->
  string ->
  unit
