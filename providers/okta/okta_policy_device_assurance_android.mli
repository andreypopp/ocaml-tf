(** Manages a device assurance policy for android. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_device_assurance_android

val okta_policy_device_assurance_android :
  ?disk_encryption_type:string prop list ->
  ?jailbreak:bool prop ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  ?secure_hardware_present:bool prop ->
  name:string prop ->
  unit ->
  okta_policy_device_assurance_android

val yojson_of_okta_policy_device_assurance_android :
  okta_policy_device_assurance_android -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_by : string prop;
  created_date : string prop;
  disk_encryption_type : string list prop;
  id : string prop;
  jailbreak : bool prop;
  last_update : string prop;
  last_updated_by : string prop;
  name : string prop;
  os_version : string prop;
  platform : string prop;
  screenlock_type : string list prop;
  secure_hardware_present : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?disk_encryption_type:string prop list ->
  ?jailbreak:bool prop ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  ?secure_hardware_present:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  ?disk_encryption_type:string prop list ->
  ?jailbreak:bool prop ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  ?secure_hardware_present:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
