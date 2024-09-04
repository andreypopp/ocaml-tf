(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_qldb_ledger

val aws_qldb_ledger :
  ?deletion_protection:bool prop ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  permissions_mode:string prop ->
  unit ->
  aws_qldb_ledger

val yojson_of_aws_qldb_ledger : aws_qldb_ledger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  deletion_protection : bool prop;
  id : string prop;
  kms_key : string prop;
  name : string prop;
  permissions_mode : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_protection:bool prop ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  permissions_mode:string prop ->
  string ->
  t

val make :
  ?deletion_protection:bool prop ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  permissions_mode:string prop ->
  string ->
  t Tf_core.resource
