(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_org_policy_custom_constraint

val google_org_policy_custom_constraint :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action_type:string prop ->
  condition:string prop ->
  method_types:string prop list ->
  name:string prop ->
  parent:string prop ->
  resource_types:string prop list ->
  unit ->
  google_org_policy_custom_constraint

val yojson_of_google_org_policy_custom_constraint :
  google_org_policy_custom_constraint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action_type : string prop;
  condition : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  method_types : string list prop;
  name : string prop;
  parent : string prop;
  resource_types : string list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action_type:string prop ->
  condition:string prop ->
  method_types:string prop list ->
  name:string prop ->
  parent:string prop ->
  resource_types:string prop list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action_type:string prop ->
  condition:string prop ->
  method_types:string prop list ->
  name:string prop ->
  parent:string prop ->
  resource_types:string prop list ->
  string ->
  t Tf_core.resource
