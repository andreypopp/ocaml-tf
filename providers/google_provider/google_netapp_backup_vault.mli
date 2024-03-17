(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_backup_vault__timeouts
type google_netapp_backup_vault

val google_netapp_backup_vault :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_netapp_backup_vault__timeouts ->
  location:string ->
  name:string ->
  string ->
  unit
