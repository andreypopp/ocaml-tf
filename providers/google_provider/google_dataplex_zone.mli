(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_zone__discovery_spec__csv_options
type google_dataplex_zone__discovery_spec__json_options
type google_dataplex_zone__discovery_spec
type google_dataplex_zone__resource_spec
type google_dataplex_zone__timeouts

type google_dataplex_zone__asset_status = {
  active_assets : float;  (** active_assets *)
  security_policy_applying_assets : float;
      (** security_policy_applying_assets *)
  update_time : string;  (** update_time *)
}

type google_dataplex_zone

val google_dataplex_zone :
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_dataplex_zone__timeouts ->
  lake:string ->
  location:string ->
  name:string ->
  type_:string ->
  discovery_spec:google_dataplex_zone__discovery_spec list ->
  resource_spec:google_dataplex_zone__resource_spec list ->
  string ->
  unit
