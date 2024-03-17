(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_resourcegroups_group__configuration__parameters
type aws_resourcegroups_group__configuration
type aws_resourcegroups_group__resource_query
type aws_resourcegroups_group__timeouts
type aws_resourcegroups_group

val aws_resourcegroups_group :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_resourcegroups_group__timeouts ->
  name:string prop ->
  configuration:aws_resourcegroups_group__configuration list ->
  resource_query:aws_resourcegroups_group__resource_query list ->
  string ->
  unit
