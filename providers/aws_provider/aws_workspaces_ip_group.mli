(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_ip_group__rules
type aws_workspaces_ip_group

val aws_workspaces_ip_group :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  rules:aws_workspaces_ip_group__rules list ->
  string ->
  unit
