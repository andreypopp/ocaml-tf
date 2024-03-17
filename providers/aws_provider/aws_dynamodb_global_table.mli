(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dynamodb_global_table__replica
type aws_dynamodb_global_table__timeouts
type aws_dynamodb_global_table

val aws_dynamodb_global_table :
  ?id:string ->
  ?timeouts:aws_dynamodb_global_table__timeouts ->
  name:string ->
  replica:aws_dynamodb_global_table__replica list ->
  string ->
  unit
