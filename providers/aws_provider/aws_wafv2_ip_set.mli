(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_ip_set

val aws_wafv2_ip_set :
    ?addresses:string prop list ->
    ?description:string prop ->
    ?id:string prop ->
    ?tags:(string * string prop) list ->
    ?tags_all:(string * string prop) list ->
    ip_address_version:string prop ->
    name:string prop ->
    scope:string prop ->
    string ->
    unit

