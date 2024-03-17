(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_backup_policy__timeouts
type google_netapp_backup_policy

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

val google_netapp_backup_policy :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_netapp_backup_policy__timeouts ->
  daily_backup_limit:float prop ->
  location:string prop ->
  monthly_backup_limit:float prop ->
  name:string prop ->
  weekly_backup_limit:float prop ->
  string ->
  t
