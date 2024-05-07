(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lakeformation_resource

val aws_lakeformation_resource :
  ?hybrid_access_enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  ?use_service_linked_role:bool prop ->
  ?with_federation:bool prop ->
  arn:string prop ->
  unit ->
  aws_lakeformation_resource

val yojson_of_aws_lakeformation_resource :
  aws_lakeformation_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  hybrid_access_enabled : bool prop;
  id : string prop;
  last_modified : string prop;
  role_arn : string prop;
  use_service_linked_role : bool prop;
  with_federation : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?hybrid_access_enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  ?use_service_linked_role:bool prop ->
  ?with_federation:bool prop ->
  arn:string prop ->
  string ->
  t

val make :
  ?hybrid_access_enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  ?use_service_linked_role:bool prop ->
  ?with_federation:bool prop ->
  arn:string prop ->
  string ->
  t Tf_core.resource
