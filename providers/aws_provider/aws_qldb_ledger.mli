(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_qldb_ledger__timeouts
type aws_qldb_ledger

val aws_qldb_ledger :
  ?deletion_protection:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_qldb_ledger__timeouts ->
  permissions_mode:string ->
  string ->
  unit
