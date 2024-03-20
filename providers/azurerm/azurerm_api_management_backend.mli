(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type credentials__authorization

val credentials__authorization :
  ?parameter:string prop ->
  ?scheme:string prop ->
  unit ->
  credentials__authorization

type credentials

val credentials :
  ?certificate:string prop list ->
  ?header:(string * string prop) list ->
  ?query:(string * string prop) list ->
  authorization:credentials__authorization list ->
  unit ->
  credentials

type proxy

val proxy :
  ?password:string prop ->
  url:string prop ->
  username:string prop ->
  unit ->
  proxy

type service_fabric_cluster__server_x509_name

val service_fabric_cluster__server_x509_name :
  issuer_certificate_thumbprint:string prop ->
  name:string prop ->
  unit ->
  service_fabric_cluster__server_x509_name

type service_fabric_cluster

val service_fabric_cluster :
  ?client_certificate_id:string prop ->
  ?client_certificate_thumbprint:string prop ->
  ?server_certificate_thumbprints:string prop list ->
  management_endpoints:string prop list ->
  max_partition_resolution_retries:float prop ->
  server_x509_name:service_fabric_cluster__server_x509_name list ->
  unit ->
  service_fabric_cluster

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type tls

val tls :
  ?validate_certificate_chain:bool prop ->
  ?validate_certificate_name:bool prop ->
  unit ->
  tls

type azurerm_api_management_backend

val azurerm_api_management_backend :
  ?description:string prop ->
  ?id:string prop ->
  ?resource_id:string prop ->
  ?title:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  url:string prop ->
  credentials:credentials list ->
  proxy:proxy list ->
  service_fabric_cluster:service_fabric_cluster list ->
  tls:tls list ->
  unit ->
  azurerm_api_management_backend

val yojson_of_azurerm_api_management_backend :
  azurerm_api_management_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
  title : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?resource_id:string prop ->
  ?title:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  url:string prop ->
  credentials:credentials list ->
  proxy:proxy list ->
  service_fabric_cluster:service_fabric_cluster list ->
  tls:tls list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?resource_id:string prop ->
  ?title:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  url:string prop ->
  credentials:credentials list ->
  proxy:proxy list ->
  service_fabric_cluster:service_fabric_cluster list ->
  tls:tls list ->
  string ->
  t Tf_core.resource
