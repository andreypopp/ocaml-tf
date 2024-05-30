(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_enterprise_organization

val github_enterprise_organization :
  ?description:string prop ->
  ?display_name:string prop ->
  admin_logins:string prop list ->
  billing_email:string prop ->
  enterprise_id:string prop ->
  name:string prop ->
  unit ->
  github_enterprise_organization

val yojson_of_github_enterprise_organization :
  github_enterprise_organization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_logins : string list prop;
  billing_email : string prop;
  database_id : float prop;
  description : string prop;
  display_name : string prop;
  enterprise_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  admin_logins:string prop list ->
  billing_email:string prop ->
  enterprise_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  admin_logins:string prop list ->
  billing_email:string prop ->
  enterprise_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
