(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_logging_organization_exclusion

val google_logging_organization_exclusion :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  filter:string prop ->
  name:string prop ->
  org_id:string prop ->
  unit ->
  google_logging_organization_exclusion

val yojson_of_google_logging_organization_exclusion :
  google_logging_organization_exclusion -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  filter:string prop ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  filter:string prop ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t Tf_core.resource
