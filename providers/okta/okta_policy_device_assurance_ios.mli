(** Manages a device assurance policy for ios. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_device_assurance_ios

val okta_policy_device_assurance_ios :
  ?jailbreak:bool prop ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  name:string prop ->
  unit ->
  okta_policy_device_assurance_ios

val yojson_of_okta_policy_device_assurance_ios :
  okta_policy_device_assurance_ios -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_by : string prop;
  created_date : string prop;
  id : string prop;
  jailbreak : bool prop;
  last_update : string prop;
  last_updated_by : string prop;
  name : string prop;
  os_version : string prop;
  platform : string prop;
  screenlock_type : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?jailbreak:bool prop ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?jailbreak:bool prop ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
