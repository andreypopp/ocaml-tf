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

type google_netapp_backup_policy

val google_netapp_backup_policy :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  daily_backup_limit:float prop ->
  location:string prop ->
  monthly_backup_limit:float prop ->
  name:string prop ->
  weekly_backup_limit:float prop ->
  unit ->
  google_netapp_backup_policy

val yojson_of_google_netapp_backup_policy :
  google_netapp_backup_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  assigned_volume_count : float prop;
  create_time : string prop;
  daily_backup_limit : float prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  enabled : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  monthly_backup_limit : float prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  weekly_backup_limit : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  daily_backup_limit:float prop ->
  location:string prop ->
  monthly_backup_limit:float prop ->
  name:string prop ->
  weekly_backup_limit:float prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  daily_backup_limit:float prop ->
  location:string prop ->
  monthly_backup_limit:float prop ->
  name:string prop ->
  weekly_backup_limit:float prop ->
  string ->
  t Tf_core.resource
