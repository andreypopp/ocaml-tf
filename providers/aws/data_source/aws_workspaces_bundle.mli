(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type compute_type = { name : string prop  (** name *) }
type root_storage = { capacity : string prop  (** capacity *) }
type user_storage = { capacity : string prop  (** capacity *) }
type aws_workspaces_bundle

val aws_workspaces_bundle :
  ?bundle_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner:string prop ->
  unit ->
  aws_workspaces_bundle

val yojson_of_aws_workspaces_bundle : aws_workspaces_bundle -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bundle_id : string prop;
  compute_type : compute_type list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  root_storage : root_storage list prop;
  user_storage : user_storage list prop;
}

val register :
  ?tf_module:tf_module ->
  ?bundle_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner:string prop ->
  string ->
  t

val make :
  ?bundle_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner:string prop ->
  string ->
  t Tf_core.resource
