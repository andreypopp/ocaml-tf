(** Creates a Sign On Policy. This resource allows you to create and configure a Sign On Policy. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_signon

val okta_policy_signon :
  ?description:string prop ->
  ?groups_included:string prop list ->
  ?id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  name:string prop ->
  unit ->
  okta_policy_signon

val yojson_of_okta_policy_signon : okta_policy_signon -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  groups_included : string list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?groups_included:string prop list ->
  ?id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?groups_included:string prop list ->
  ?id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
