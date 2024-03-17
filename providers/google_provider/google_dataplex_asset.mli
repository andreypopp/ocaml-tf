(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_asset__discovery_spec__csv_options
type google_dataplex_asset__discovery_spec__json_options
type google_dataplex_asset__discovery_spec
type google_dataplex_asset__resource_spec
type google_dataplex_asset__timeouts

type google_dataplex_asset__discovery_status__stats = {
  data_items : float;  (** data_items *)
  data_size : float;  (** data_size *)
  filesets : float;  (** filesets *)
  tables : float;  (** tables *)
}

type google_dataplex_asset__discovery_status = {
  last_run_duration : string;  (** last_run_duration *)
  last_run_time : string;  (** last_run_time *)
  message : string;  (** message *)
  state : string;  (** state *)
  stats : google_dataplex_asset__discovery_status__stats list;
      (** stats *)
  update_time : string;  (** update_time *)
}

type google_dataplex_asset__resource_status = {
  message : string;  (** message *)
  state : string;  (** state *)
  update_time : string;  (** update_time *)
}

type google_dataplex_asset__security_status = {
  message : string;  (** message *)
  state : string;  (** state *)
  update_time : string;  (** update_time *)
}

type google_dataplex_asset

val google_dataplex_asset :
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_dataplex_asset__timeouts ->
  dataplex_zone:string ->
  lake:string ->
  location:string ->
  name:string ->
  discovery_spec:google_dataplex_asset__discovery_spec list ->
  resource_spec:google_dataplex_asset__resource_spec list ->
  string ->
  unit
