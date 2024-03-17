(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_namespace__timeouts

type aws_quicksight_namespace

val aws_quicksight_namespace :
    ?aws_account_id:string prop ->
    ?identity_store:string prop ->
    ?tags:(string * string prop) list ->
    ?timeouts:aws_quicksight_namespace__timeouts ->
    namespace:string prop ->
    string ->
    unit

