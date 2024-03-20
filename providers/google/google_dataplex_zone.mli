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

type discovery_spec__csv_options

val discovery_spec__csv_options :
  ?delimiter:string prop ->
  ?disable_type_inference:bool prop ->
  ?encoding:string prop ->
  ?header_rows:float prop ->
  unit ->
  discovery_spec__csv_options

type discovery_spec__json_options

val discovery_spec__json_options :
  ?disable_type_inference:bool prop ->
  ?encoding:string prop ->
  unit ->
  discovery_spec__json_options

type discovery_spec

val discovery_spec :
  ?exclude_patterns:string prop list ->
  ?include_patterns:string prop list ->
  ?schedule:string prop ->
  enabled:bool prop ->
  csv_options:discovery_spec__csv_options list ->
  json_options:discovery_spec__json_options list ->
  unit ->
  discovery_spec

type resource_spec

val resource_spec :
  location_type:string prop -> unit -> resource_spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dataplex_zone

val google_dataplex_zone :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  lake:string prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  discovery_spec:discovery_spec list ->
  resource_spec:resource_spec list ->
  unit ->
  google_dataplex_zone

val yojson_of_google_dataplex_zone : google_dataplex_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  asset_status : asset_status list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  lake : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
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
  lake:string prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  discovery_spec:discovery_spec list ->
  resource_spec:resource_spec list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  lake:string prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  discovery_spec:discovery_spec list ->
  resource_spec:resource_spec list ->
  string ->
  t Tf_core.resource
