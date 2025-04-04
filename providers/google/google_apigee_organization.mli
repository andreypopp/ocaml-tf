(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type properties__property

val properties__property :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  properties__property

type properties

val properties :
  ?property:properties__property list -> unit -> properties

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apigee_organization

val google_apigee_organization :
  ?analytics_region:string prop ->
  ?api_consumer_data_encryption_key_name:string prop ->
  ?api_consumer_data_location:string prop ->
  ?authorized_network:string prop ->
  ?billing_type:string prop ->
  ?control_plane_encryption_key_name:string prop ->
  ?description:string prop ->
  ?disable_vpc_peering:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?retention:string prop ->
  ?runtime_database_encryption_key_name:string prop ->
  ?runtime_type:string prop ->
  ?properties:properties list ->
  ?timeouts:timeouts ->
  project_id:string prop ->
  unit ->
  google_apigee_organization

val yojson_of_google_apigee_organization :
  google_apigee_organization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  analytics_region : string prop;
  api_consumer_data_encryption_key_name : string prop;
  api_consumer_data_location : string prop;
  apigee_project_id : string prop;
  authorized_network : string prop;
  billing_type : string prop;
  ca_certificate : string prop;
  control_plane_encryption_key_name : string prop;
  description : string prop;
  disable_vpc_peering : bool prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project_id : string prop;
  retention : string prop;
  runtime_database_encryption_key_name : string prop;
  runtime_type : string prop;
  subscription_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?analytics_region:string prop ->
  ?api_consumer_data_encryption_key_name:string prop ->
  ?api_consumer_data_location:string prop ->
  ?authorized_network:string prop ->
  ?billing_type:string prop ->
  ?control_plane_encryption_key_name:string prop ->
  ?description:string prop ->
  ?disable_vpc_peering:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?retention:string prop ->
  ?runtime_database_encryption_key_name:string prop ->
  ?runtime_type:string prop ->
  ?properties:properties list ->
  ?timeouts:timeouts ->
  project_id:string prop ->
  string ->
  t

val make :
  ?analytics_region:string prop ->
  ?api_consumer_data_encryption_key_name:string prop ->
  ?api_consumer_data_location:string prop ->
  ?authorized_network:string prop ->
  ?billing_type:string prop ->
  ?control_plane_encryption_key_name:string prop ->
  ?description:string prop ->
  ?disable_vpc_peering:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?retention:string prop ->
  ?runtime_database_encryption_key_name:string prop ->
  ?runtime_type:string prop ->
  ?properties:properties list ->
  ?timeouts:timeouts ->
  project_id:string prop ->
  string ->
  t Tf_core.resource
