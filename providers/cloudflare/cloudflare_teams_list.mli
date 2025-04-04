(** Provides a Cloudflare Teams List resource. Teams lists are
referenced when creating secure web gateway policies or device
posture rules.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_teams_list

val cloudflare_teams_list :
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  cloudflare_teams_list

val yojson_of_cloudflare_teams_list : cloudflare_teams_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
