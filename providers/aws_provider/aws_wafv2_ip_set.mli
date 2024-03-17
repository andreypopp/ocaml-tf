(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_ip_set

val aws_wafv2_ip_set :
    ?addresses:string list ->
    ?description:string ->
    ?tags:(string * string) list ->
    ip_address_version:string ->
    name:string ->
    scope:string ->
    string ->
    unit

