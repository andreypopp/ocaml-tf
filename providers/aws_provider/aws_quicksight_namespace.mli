(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_namespace__timeouts

type aws_quicksight_namespace

val aws_quicksight_namespace :
    ?aws_account_id:string ->
    ?identity_store:string ->
    ?tags:(string * string) list ->
    ?timeouts:aws_quicksight_namespace__timeouts ->
    namespace:string ->
    string ->
    unit

