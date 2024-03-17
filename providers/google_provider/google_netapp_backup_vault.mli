(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_backup_vault__timeouts
type google_netapp_backup_vault

val google_netapp_backup_vault :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_netapp_backup_vault__timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  unit
