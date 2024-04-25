(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type boolean_policy

val boolean_policy : enforced:bool prop -> unit -> boolean_policy

type list_policy__allow

val list_policy__allow :
  ?all:bool prop ->
  ?values:string prop list ->
  unit ->
  list_policy__allow

type list_policy__deny

val list_policy__deny :
  ?all:bool prop ->
  ?values:string prop list ->
  unit ->
  list_policy__deny

type list_policy

val list_policy :
  ?inherit_from_parent:bool prop ->
  ?suggested_value:string prop ->
  ?allow:list_policy__allow list ->
  ?deny:list_policy__deny list ->
  unit ->
  list_policy

type restore_policy

val restore_policy : default:bool prop -> unit -> restore_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_organization_policy

val google_organization_policy :
  ?id:string prop ->
  ?version:float prop ->
  ?boolean_policy:boolean_policy list ->
  ?list_policy:list_policy list ->
  ?restore_policy:restore_policy list ->
  ?timeouts:timeouts ->
  constraint_:string prop ->
  org_id:string prop ->
  unit ->
  google_organization_policy

val yojson_of_google_organization_policy :
  google_organization_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  constraint_ : string prop;
  etag : string prop;
  id : string prop;
  org_id : string prop;
  update_time : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version:float prop ->
  ?boolean_policy:boolean_policy list ->
  ?list_policy:list_policy list ->
  ?restore_policy:restore_policy list ->
  ?timeouts:timeouts ->
  constraint_:string prop ->
  org_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version:float prop ->
  ?boolean_policy:boolean_policy list ->
  ?list_policy:list_policy list ->
  ?restore_policy:restore_policy list ->
  ?timeouts:timeouts ->
  constraint_:string prop ->
  org_id:string prop ->
  string ->
  t Tf_core.resource
