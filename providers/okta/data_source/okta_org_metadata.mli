(** Retrieves the well-known org metadata, which includes the id, configured custom domains, authentication pipeline, and various other org settings. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type domains

val domains : unit -> domains

type settings

val settings : unit -> settings

type okta_org_metadata

val okta_org_metadata :
  domains:domains -> settings:settings -> unit -> okta_org_metadata

val yojson_of_okta_org_metadata : okta_org_metadata -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  pipeline : string prop;
}

val register :
  ?tf_module:tf_module ->
  domains:domains ->
  settings:settings ->
  string ->
  t

val make :
  domains:domains ->
  settings:settings ->
  string ->
  t Tf_core.resource
