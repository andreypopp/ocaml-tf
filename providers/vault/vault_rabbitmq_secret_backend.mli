(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_rabbitmq_secret_backend

val vault_rabbitmq_secret_backend :
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?password_policy:string prop ->
  ?path:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  connection_uri:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  vault_rabbitmq_secret_backend

val yojson_of_vault_rabbitmq_secret_backend : vault_rabbitmq_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_uri : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  password : string prop;
  password_policy : string prop;
  path : string prop;
  username : string prop;
  username_template : string prop;
  verify_connection : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?password_policy:string prop ->
  ?path:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  connection_uri:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?password_policy:string prop ->
  ?path:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  connection_uri:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
