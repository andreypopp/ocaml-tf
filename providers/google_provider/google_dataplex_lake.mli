(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_lake__metastore
type google_dataplex_lake__timeouts

type google_dataplex_lake__asset_status = {
  active_assets : float;  (** active_assets *)
  security_policy_applying_assets : float;
      (** security_policy_applying_assets *)
  update_time : string;  (** update_time *)
}

type google_dataplex_lake__metastore_status = {
  endpoint : string;  (** endpoint *)
  message : string;  (** message *)
  state : string;  (** state *)
  update_time : string;  (** update_time *)
}

type google_dataplex_lake

val google_dataplex_lake :
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_dataplex_lake__timeouts ->
  location:string ->
  name:string ->
  metastore:google_dataplex_lake__metastore list ->
  string ->
  unit
