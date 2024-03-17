(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_ip_group__rules
type aws_workspaces_ip_group

val aws_workspaces_ip_group :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  rules:aws_workspaces_ip_group__rules list ->
  string ->
  unit
