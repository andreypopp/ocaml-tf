(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_vpc_connection__timeouts

type aws_quicksight_vpc_connection

val aws_quicksight_vpc_connection :
    ?aws_account_id:string ->
    ?dns_resolvers:string list ->
    ?tags:(string * string) list ->
    ?timeouts:aws_quicksight_vpc_connection__timeouts ->
    name:string ->
    role_arn:string ->
    security_group_ids:string list ->
    subnet_ids:string list ->
    vpc_connection_id:string ->
    string ->
    unit

