(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ami_ids

val aws_ami_ids :
  ?executable_users:string prop list ->
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?name_regex:string prop ->
  ?sort_ascending:bool prop ->
  ?timeouts:timeouts ->
  owners:string prop list ->
  filter:filter list ->
  unit ->
  aws_ami_ids

val yojson_of_aws_ami_ids : aws_ami_ids -> json

(** RESOURCE REGISTRATION *)

type t = private {
  executable_users : string list prop;
  id : string prop;
  ids : string list prop;
  include_deprecated : bool prop;
  name_regex : string prop;
  owners : string list prop;
  sort_ascending : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?executable_users:string prop list ->
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?name_regex:string prop ->
  ?sort_ascending:bool prop ->
  ?timeouts:timeouts ->
  owners:string prop list ->
  filter:filter list ->
  string ->
  t

val make :
  ?executable_users:string prop list ->
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?name_regex:string prop ->
  ?sort_ascending:bool prop ->
  ?timeouts:timeouts ->
  owners:string prop list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
