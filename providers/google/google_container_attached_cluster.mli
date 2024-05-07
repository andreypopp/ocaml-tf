(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type errors = { message : string prop  (** message *) }

type workload_identity_config = {
  identity_provider : string prop;  (** identity_provider *)
  issuer_uri : string prop;  (** issuer_uri *)
  workload_pool : string prop;  (** workload_pool *)
}

type authorization

val authorization :
  ?admin_groups:string prop list ->
  ?admin_users:string prop list ->
  unit ->
  authorization

type binary_authorization

val binary_authorization :
  ?evaluation_mode:string prop -> unit -> binary_authorization

type fleet

val fleet : project:string prop -> unit -> fleet

type logging_config__component_config

val logging_config__component_config :
  ?enable_components:string prop list ->
  unit ->
  logging_config__component_config

type logging_config

val logging_config :
  ?component_config:logging_config__component_config list ->
  unit ->
  logging_config

type monitoring_config__managed_prometheus_config

val monitoring_config__managed_prometheus_config :
  ?enabled:bool prop ->
  unit ->
  monitoring_config__managed_prometheus_config

type monitoring_config

val monitoring_config :
  ?managed_prometheus_config:
    monitoring_config__managed_prometheus_config list ->
  unit ->
  monitoring_config

type oidc_config

val oidc_config :
  ?jwks:string prop -> issuer_url:string prop -> unit -> oidc_config

type proxy_config__kubernetes_secret

val proxy_config__kubernetes_secret :
  name:string prop ->
  namespace:string prop ->
  unit ->
  proxy_config__kubernetes_secret

type proxy_config

val proxy_config :
  ?kubernetes_secret:proxy_config__kubernetes_secret list ->
  unit ->
  proxy_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_container_attached_cluster

val google_container_attached_cluster :
  ?annotations:(string * string prop) list ->
  ?deletion_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?authorization:authorization list ->
  ?binary_authorization:binary_authorization list ->
  ?logging_config:logging_config list ->
  ?monitoring_config:monitoring_config list ->
  ?proxy_config:proxy_config list ->
  ?timeouts:timeouts ->
  distribution:string prop ->
  location:string prop ->
  name:string prop ->
  platform_version:string prop ->
  fleet:fleet list ->
  oidc_config:oidc_config list ->
  unit ->
  google_container_attached_cluster

val yojson_of_google_container_attached_cluster :
  google_container_attached_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : (string * string) list prop;
  cluster_region : string prop;
  create_time : string prop;
  deletion_policy : string prop;
  description : string prop;
  distribution : string prop;
  effective_annotations : (string * string) list prop;
  errors : errors list prop;
  id : string prop;
  kubernetes_version : string prop;
  location : string prop;
  name : string prop;
  platform_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config : workload_identity_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?deletion_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?authorization:authorization list ->
  ?binary_authorization:binary_authorization list ->
  ?logging_config:logging_config list ->
  ?monitoring_config:monitoring_config list ->
  ?proxy_config:proxy_config list ->
  ?timeouts:timeouts ->
  distribution:string prop ->
  location:string prop ->
  name:string prop ->
  platform_version:string prop ->
  fleet:fleet list ->
  oidc_config:oidc_config list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?deletion_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?authorization:authorization list ->
  ?binary_authorization:binary_authorization list ->
  ?logging_config:logging_config list ->
  ?monitoring_config:monitoring_config list ->
  ?proxy_config:proxy_config list ->
  ?timeouts:timeouts ->
  distribution:string prop ->
  location:string prop ->
  name:string prop ->
  platform_version:string prop ->
  fleet:fleet list ->
  oidc_config:oidc_config list ->
  string ->
  t Tf_core.resource
