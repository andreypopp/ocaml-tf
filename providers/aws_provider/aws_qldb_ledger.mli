(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_qldb_ledger__timeouts
type aws_qldb_ledger

val aws_qldb_ledger :
  ?deletion_protection:bool prop ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_qldb_ledger__timeouts ->
  permissions_mode:string prop ->
  string ->
  unit
