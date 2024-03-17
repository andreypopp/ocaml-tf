(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_backup_policy__timeouts
type google_netapp_backup_policy

val google_netapp_backup_policy :
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_netapp_backup_policy__timeouts ->
  daily_backup_limit:float ->
  location:string ->
  monthly_backup_limit:float ->
  name:string ->
  weekly_backup_limit:float ->
  string ->
  unit
