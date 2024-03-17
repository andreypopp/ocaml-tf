(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_resourcegroups_group__configuration__parameters
type aws_resourcegroups_group__configuration
type aws_resourcegroups_group__resource_query
type aws_resourcegroups_group__timeouts
type aws_resourcegroups_group

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t
