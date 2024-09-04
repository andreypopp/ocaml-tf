(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type results = {
  asset_type : string prop;  (** asset_type *)
  create_time : string prop;  (** create_time *)
  description : string prop;  (** description *)
  display_name : string prop;  (** display_name *)
  folders : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** folders *)
  kms_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** kms_keys *)
  labels : string prop Tf_core.assoc;  (** labels *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_tags *)
  organization : string prop;  (** organization *)
  parent_asset_type : string prop;  (** parent_asset_type *)
  parent_full_resource_name : string prop;
      (** parent_full_resource_name *)
  project : string prop;  (** project *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}

type google_cloud_asset_search_all_resources

val google_cloud_asset_search_all_resources :
  ?asset_types:string prop list ->
  ?id:string prop ->
  ?query:string prop ->
  scope:string prop ->
  unit ->
  google_cloud_asset_search_all_resources

val yojson_of_google_cloud_asset_search_all_resources :
  google_cloud_asset_search_all_resources -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  asset_types : string list prop;
  id : string prop;
  query : string prop;
  results : results list prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?asset_types:string prop list ->
  ?id:string prop ->
  ?query:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?asset_types:string prop list ->
  ?id:string prop ->
  ?query:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
