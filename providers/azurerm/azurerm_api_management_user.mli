(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_user__timeouts
type azurerm_api_management_user

type t = private {
  api_management_name : string prop;
  confirmation : string prop;
  email : string prop;
  first_name : string prop;
  id : string prop;
  last_name : string prop;
  note : string prop;
  password : string prop;
  resource_group_name : string prop;
  state : string prop;
  user_id : string prop;
}

val azurerm_api_management_user :
  ?confirmation:string prop ->
  ?id:string prop ->
  ?note:string prop ->
  ?password:string prop ->
  ?state:string prop ->
  ?timeouts:azurerm_api_management_user__timeouts ->
  api_management_name:string prop ->
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  resource_group_name:string prop ->
  user_id:string prop ->
  string ->
  t
