(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type asset_status = {
  active_assets : float prop;  (** active_assets *)
  security_policy_applying_assets : float prop;
      (** security_policy_applying_assets *)
  update_time : string prop;  (** update_time *)
}

[@@@deriving.end]

type metastore_status = {
  endpoint : string prop;  (** endpoint *)
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}

[@@@deriving.end]

type metastore

val metastore : ?service:string prop -> unit -> metastore

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dataplex_lake

val google_dataplex_lake :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  metastore:metastore list ->
  unit ->
  google_dataplex_lake

val yojson_of_google_dataplex_lake : google_dataplex_lake -> json

(** RESOURCE REGISTRATION *)

type t = private {
  asset_status : asset_status list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  metastore_status : metastore_status list prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  metastore:metastore list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  metastore:metastore list ->
  string ->
  t Tf_core.resource
