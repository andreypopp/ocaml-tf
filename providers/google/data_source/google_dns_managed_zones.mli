(** Provides access to all zones for a given project within Google Cloud DNS *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed_zones

val managed_zones : unit -> managed_zones

type google_dns_managed_zones

val google_dns_managed_zones :
  ?project:string prop ->
  ?managed_zones:managed_zones list ->
  unit ->
  google_dns_managed_zones

val yojson_of_google_dns_managed_zones :
  google_dns_managed_zones -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; project : string prop }

val register :
  ?tf_module:tf_module ->
  ?project:string prop ->
  ?managed_zones:managed_zones list ->
  string ->
  t

val make :
  ?project:string prop ->
  ?managed_zones:managed_zones list ->
  string ->
  t Tf_core.resource
