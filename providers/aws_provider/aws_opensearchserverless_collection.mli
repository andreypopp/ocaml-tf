(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearchserverless_collection__timeouts
type aws_opensearchserverless_collection

val aws_opensearchserverless_collection :
  ?description:string prop ->
  ?standby_replicas:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:aws_opensearchserverless_collection__timeouts ->
  name:string prop ->
  string ->
  unit
