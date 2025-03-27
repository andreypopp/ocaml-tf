(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_database_secret_backend_role

val vault_database_secret_backend_role :
  ?credential_config:string prop Tf_core.assoc ->
  ?credential_type:string prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?renew_statements:string prop list ->
  ?revocation_statements:string prop list ->
  ?rollback_statements:string prop list ->
  backend:string prop ->
  creation_statements:string prop list ->
  db_name:string prop ->
  name:string prop ->
  unit ->
  vault_database_secret_backend_role

val yojson_of_vault_database_secret_backend_role : vault_database_secret_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  creation_statements : string list prop;
  credential_config : string Tf_core.assoc prop;
  credential_type : string prop;
  db_name : string prop;
  default_ttl : float prop;
  id : string prop;
  max_ttl : float prop;
  name : string prop;
  namespace : string prop;
  renew_statements : string list prop;
  revocation_statements : string list prop;
  rollback_statements : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?credential_config:string prop Tf_core.assoc ->
  ?credential_type:string prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?renew_statements:string prop list ->
  ?revocation_statements:string prop list ->
  ?rollback_statements:string prop list ->
  backend:string prop ->
  creation_statements:string prop list ->
  db_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?credential_config:string prop Tf_core.assoc ->
  ?credential_type:string prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?renew_statements:string prop list ->
  ?revocation_statements:string prop list ->
  ?rollback_statements:string prop list ->
  backend:string prop ->
  creation_statements:string prop list ->
  db_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
