(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_ip_ranges

val github_ip_ranges : ?id:string prop -> unit -> github_ip_ranges
val yojson_of_github_ip_ranges : github_ip_ranges -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  actions : string list prop;
  actions_ipv4 : string list prop;
  actions_ipv6 : string list prop;
  api : string list prop;
  api_ipv4 : string list prop;
  api_ipv6 : string list prop;
  dependabot : string list prop;
  dependabot_ipv4 : string list prop;
  dependabot_ipv6 : string list prop;
  git : string list prop;
  git_ipv4 : string list prop;
  git_ipv6 : string list prop;
  hooks : string list prop;
  hooks_ipv4 : string list prop;
  hooks_ipv6 : string list prop;
  id : string prop;
  importer : string list prop;
  importer_ipv4 : string list prop;
  importer_ipv6 : string list prop;
  packages : string list prop;
  packages_ipv4 : string list prop;
  packages_ipv6 : string list prop;
  pages : string list prop;
  pages_ipv4 : string list prop;
  pages_ipv6 : string list prop;
  web : string list prop;
  web_ipv4 : string list prop;
  web_ipv6 : string list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
