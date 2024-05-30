(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type results = {
  base_ref : string prop;  (** base_ref *)
  base_sha : string prop;  (** base_sha *)
  body : string prop;  (** body *)
  draft : bool prop;  (** draft *)
  head_owner : string prop;  (** head_owner *)
  head_ref : string prop;  (** head_ref *)
  head_repository : string prop;  (** head_repository *)
  head_sha : string prop;  (** head_sha *)
  labels : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** labels *)
  maintainer_can_modify : bool prop;  (** maintainer_can_modify *)
  number : float prop;  (** number *)
  opened_at : float prop;  (** opened_at *)
  opened_by : string prop;  (** opened_by *)
  state : string prop;  (** state *)
  title : string prop;  (** title *)
  updated_at : float prop;  (** updated_at *)
}

type github_repository_pull_requests

val github_repository_pull_requests :
  ?base_ref:string prop ->
  ?head_ref:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?sort_by:string prop ->
  ?sort_direction:string prop ->
  ?state:string prop ->
  base_repository:string prop ->
  unit ->
  github_repository_pull_requests

val yojson_of_github_repository_pull_requests :
  github_repository_pull_requests -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_ref : string prop;
  base_repository : string prop;
  head_ref : string prop;
  id : string prop;
  owner : string prop;
  results : results list prop;
  sort_by : string prop;
  sort_direction : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_ref:string prop ->
  ?head_ref:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?sort_by:string prop ->
  ?sort_direction:string prop ->
  ?state:string prop ->
  base_repository:string prop ->
  string ->
  t

val make :
  ?base_ref:string prop ->
  ?head_ref:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?sort_by:string prop ->
  ?sort_direction:string prop ->
  ?state:string prop ->
  base_repository:string prop ->
  string ->
  t Tf_core.resource
