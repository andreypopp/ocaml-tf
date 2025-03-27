(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kubernetes_secret_backend_role

val vault_kubernetes_secret_backend_role :
  ?allowed_kubernetes_namespace_selector:string prop ->
  ?allowed_kubernetes_namespaces:string prop list ->
  ?extra_annotations:string prop Tf_core.assoc ->
  ?extra_labels:string prop Tf_core.assoc ->
  ?generated_role_rules:string prop ->
  ?id:string prop ->
  ?kubernetes_role_name:string prop ->
  ?kubernetes_role_type:string prop ->
  ?name_template:string prop ->
  ?namespace:string prop ->
  ?service_account_name:string prop ->
  ?token_default_ttl:float prop ->
  ?token_max_ttl:float prop ->
  backend:string prop ->
  name:string prop ->
  unit ->
  vault_kubernetes_secret_backend_role

val yojson_of_vault_kubernetes_secret_backend_role : vault_kubernetes_secret_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_kubernetes_namespace_selector : string prop;
  allowed_kubernetes_namespaces : string list prop;
  backend : string prop;
  extra_annotations : string Tf_core.assoc prop;
  extra_labels : string Tf_core.assoc prop;
  generated_role_rules : string prop;
  id : string prop;
  kubernetes_role_name : string prop;
  kubernetes_role_type : string prop;
  name : string prop;
  name_template : string prop;
  namespace : string prop;
  service_account_name : string prop;
  token_default_ttl : float prop;
  token_max_ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_kubernetes_namespace_selector:string prop ->
  ?allowed_kubernetes_namespaces:string prop list ->
  ?extra_annotations:string prop Tf_core.assoc ->
  ?extra_labels:string prop Tf_core.assoc ->
  ?generated_role_rules:string prop ->
  ?id:string prop ->
  ?kubernetes_role_name:string prop ->
  ?kubernetes_role_type:string prop ->
  ?name_template:string prop ->
  ?namespace:string prop ->
  ?service_account_name:string prop ->
  ?token_default_ttl:float prop ->
  ?token_max_ttl:float prop ->
  backend:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?allowed_kubernetes_namespace_selector:string prop ->
  ?allowed_kubernetes_namespaces:string prop list ->
  ?extra_annotations:string prop Tf_core.assoc ->
  ?extra_labels:string prop Tf_core.assoc ->
  ?generated_role_rules:string prop ->
  ?id:string prop ->
  ?kubernetes_role_name:string prop ->
  ?kubernetes_role_type:string prop ->
  ?name_template:string prop ->
  ?namespace:string prop ->
  ?service_account_name:string prop ->
  ?token_default_ttl:float prop ->
  ?token_max_ttl:float prop ->
  backend:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
