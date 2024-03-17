(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_account_subscription__timeouts

type aws_quicksight_account_subscription

val aws_quicksight_account_subscription :
    ?active_directory_name:string ->
    ?admin_group:string list ->
    ?author_group:string list ->
    ?aws_account_id:string ->
    ?contact_number:string ->
    ?directory_id:string ->
    ?email_address:string ->
    ?first_name:string ->
    ?id:string ->
    ?last_name:string ->
    ?reader_group:string list ->
    ?realm:string ->
    ?timeouts:aws_quicksight_account_subscription__timeouts ->
    account_name:string ->
    authentication_method:string ->
    edition:string ->
    notification_email:string ->
    string ->
    unit

