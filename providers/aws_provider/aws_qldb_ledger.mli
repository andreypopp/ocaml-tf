(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_qldb_ledger__timeouts
type aws_qldb_ledger

val aws_qldb_ledger :
  ?deletion_protection:bool ->
  ?id:string ->
  ?kms_key:string ->
  ?name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_qldb_ledger__timeouts ->
  permissions_mode:string ->
  string ->
  unit
