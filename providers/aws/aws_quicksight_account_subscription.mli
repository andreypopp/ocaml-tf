

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
    ?create:string prop ->
    ?delete:string prop ->
    ?read:string prop ->
    unit ->
    timeouts

type aws_quicksight_account_subscription

val aws_quicksight_account_subscription :
    ?active_directory_name:string prop ->
    ?admin_group:string  prop list ->
    ?author_group:string  prop list ->
    ?aws_account_id:string prop ->
    ?contact_number:string prop ->
    ?directory_id:string prop ->
    ?email_address:string prop ->
    ?first_name:string prop ->
    ?id:string prop ->
    ?last_name:string prop ->
    ?reader_group:string  prop list ->
    ?realm:string prop ->
    ?timeouts:timeouts ->
    account_name:string prop ->
    authentication_method:string prop ->
    edition:string prop ->
    notification_email:string prop ->
    unit ->
    aws_quicksight_account_subscription

val yojson_of_aws_quicksight_account_subscription : aws_quicksight_account_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  account_name: string prop;
  account_subscription_status: string prop;
  active_directory_name: string prop;
  admin_group: string list prop;
  authentication_method: string prop;
  author_group: string list prop;
  aws_account_id: string prop;
  contact_number: string prop;
  directory_id: string prop;
  edition: string prop;
  email_address: string prop;
  first_name: string prop;
  id: string prop;
  last_name: string prop;
  notification_email: string prop;
  reader_group: string list prop;
  realm: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?active_directory_name:string prop ->
    ?admin_group:string  prop list ->
    ?author_group:string  prop list ->
    ?aws_account_id:string prop ->
    ?contact_number:string prop ->
    ?directory_id:string prop ->
    ?email_address:string prop ->
    ?first_name:string prop ->
    ?id:string prop ->
    ?last_name:string prop ->
    ?reader_group:string  prop list ->
    ?realm:string prop ->
    ?timeouts:timeouts ->
    account_name:string prop ->
    authentication_method:string prop ->
    edition:string prop ->
    notification_email:string prop ->
    string ->
    t

val make :
    ?active_directory_name:string prop ->
    ?admin_group:string  prop list ->
    ?author_group:string  prop list ->
    ?aws_account_id:string prop ->
    ?contact_number:string prop ->
    ?directory_id:string prop ->
    ?email_address:string prop ->
    ?first_name:string prop ->
    ?id:string prop ->
    ?last_name:string prop ->
    ?reader_group:string  prop list ->
    ?realm:string prop ->
    ?timeouts:timeouts ->
    account_name:string prop ->
    authentication_method:string prop ->
    edition:string prop ->
    notification_email:string prop ->
    string ->
    t Tf_core.resource

