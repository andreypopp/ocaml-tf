(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_zone__discovery_spec__csv_options
type google_dataplex_zone__discovery_spec__json_options
type google_dataplex_zone__discovery_spec
type google_dataplex_zone__resource_spec
type google_dataplex_zone__timeouts

type google_dataplex_zone__asset_status = {
  active_assets : float prop;  (** active_assets *)
  security_policy_applying_assets : float prop;
      (** security_policy_applying_assets *)
  update_time : string prop;  (** update_time *)
}

type google_dataplex_zone

val google_dataplex_zone :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_dataplex_zone__timeouts ->
  lake:string prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  discovery_spec:google_dataplex_zone__discovery_spec list ->
  resource_spec:google_dataplex_zone__resource_spec list ->
  string ->
  unit
