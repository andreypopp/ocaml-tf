(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearchserverless_collection__timeouts
type aws_opensearchserverless_collection

val aws_opensearchserverless_collection :
  ?description:string ->
  ?standby_replicas:string ->
  ?tags:(string * string) list ->
  ?type_:string ->
  ?timeouts:aws_opensearchserverless_collection__timeouts ->
  name:string ->
  string ->
  unit
