(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_account_subscription__timeouts

type aws_quicksight_account_subscription

val aws_quicksight_account_subscription :
    ?active_directory_name:string prop ->
    ?admin_group:string prop list ->
    ?author_group:string prop list ->
    ?aws_account_id:string prop ->
    ?contact_number:string prop ->
    ?directory_id:string prop ->
    ?email_address:string prop ->
    ?first_name:string prop ->
    ?id:string prop ->
    ?last_name:string prop ->
    ?reader_group:string prop list ->
    ?realm:string prop ->
    ?timeouts:aws_quicksight_account_subscription__timeouts ->
    account_name:string prop ->
    authentication_method:string prop ->
    edition:string prop ->
    notification_email:string prop ->
    string ->
    unit

