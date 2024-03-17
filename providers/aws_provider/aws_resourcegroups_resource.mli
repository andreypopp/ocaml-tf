(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_resourcegroups_resource__timeouts
type aws_resourcegroups_resource

type t = private {
  group_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_type : string prop;
}

val aws_resourcegroups_resource :
  ?id:string prop ->
  ?timeouts:aws_resourcegroups_resource__timeouts ->
  group_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t
