(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lakeformation_resource

val aws_lakeformation_resource :
  ?hybrid_access_enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  ?use_service_linked_role:bool prop ->
  ?with_federation:bool prop ->
  arn:string prop ->
  string ->
  unit
