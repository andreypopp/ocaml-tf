(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_vpc_connection__timeouts

type aws_quicksight_vpc_connection

val aws_quicksight_vpc_connection :
    ?aws_account_id:string prop ->
    ?dns_resolvers:string prop list ->
    ?tags:(string * string prop) list ->
    ?timeouts:aws_quicksight_vpc_connection__timeouts ->
    name:string prop ->
    role_arn:string prop ->
    security_group_ids:string prop list ->
    subnet_ids:string prop list ->
    vpc_connection_id:string prop ->
    string ->
    unit

