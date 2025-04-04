(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type discovery_status__stats = {
  data_items : float prop;  (** data_items *)
  data_size : float prop;  (** data_size *)
  filesets : float prop;  (** filesets *)
  tables : float prop;  (** tables *)
}

type discovery_status = {
  last_run_duration : string prop;  (** last_run_duration *)
  last_run_time : string prop;  (** last_run_time *)
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  stats : discovery_status__stats list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** stats *)
  update_time : string prop;  (** update_time *)
}

type resource_status = {
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}

type security_status = {
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}

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
  ?csv_options:discovery_spec__csv_options list ->
  ?json_options:discovery_spec__json_options list ->
  enabled:bool prop ->
  unit ->
  discovery_spec

type resource_spec

val resource_spec :
  ?name:string prop ->
  ?read_access_mode:string prop ->
  type_:string prop ->
  unit ->
  resource_spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dataplex_asset

val google_dataplex_asset :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dataplex_zone:string prop ->
  lake:string prop ->
  location:string prop ->
  name:string prop ->
  discovery_spec:discovery_spec list ->
  resource_spec:resource_spec list ->
  unit ->
  google_dataplex_asset

val yojson_of_google_dataplex_asset : google_dataplex_asset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  dataplex_zone : string prop;
  description : string prop;
  discovery_status : discovery_status list prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  lake : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  resource_status : resource_status list prop;
  security_status : security_status list prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dataplex_zone:string prop ->
  lake:string prop ->
  location:string prop ->
  name:string prop ->
  discovery_spec:discovery_spec list ->
  resource_spec:resource_spec list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dataplex_zone:string prop ->
  lake:string prop ->
  location:string prop ->
  name:string prop ->
  discovery_spec:discovery_spec list ->
  resource_spec:resource_spec list ->
  string ->
  t Tf_core.resource
