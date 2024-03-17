(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_asset__discovery_spec__csv_options
type google_dataplex_asset__discovery_spec__json_options
type google_dataplex_asset__discovery_spec
type google_dataplex_asset__resource_spec
type google_dataplex_asset__timeouts

type google_dataplex_asset__discovery_status__stats = {
  data_items : float prop;  (** data_items *)
  data_size : float prop;  (** data_size *)
  filesets : float prop;  (** filesets *)
  tables : float prop;  (** tables *)
}

type google_dataplex_asset__discovery_status = {
  last_run_duration : string prop;  (** last_run_duration *)
  last_run_time : string prop;  (** last_run_time *)
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  stats : google_dataplex_asset__discovery_status__stats list;
      (** stats *)
  update_time : string prop;  (** update_time *)
}

type google_dataplex_asset__resource_status = {
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}

type google_dataplex_asset__security_status = {
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}

type google_dataplex_asset

val google_dataplex_asset :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_dataplex_asset__timeouts ->
  dataplex_zone:string prop ->
  lake:string prop ->
  location:string prop ->
  name:string prop ->
  discovery_spec:google_dataplex_asset__discovery_spec list ->
  resource_spec:google_dataplex_asset__resource_spec list ->
  string ->
  unit
