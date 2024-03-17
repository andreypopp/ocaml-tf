(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_account_region__timeouts
type aws_account_region

val aws_account_region :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:aws_account_region__timeouts ->
  enabled:bool prop ->
  region_name:string prop ->
  string ->
  unit
