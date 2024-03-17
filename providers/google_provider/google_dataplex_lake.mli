(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_lake__metastore
type google_dataplex_lake__timeouts

type google_dataplex_lake__asset_status = {
  active_assets : float prop;  (** active_assets *)
  security_policy_applying_assets : float prop;
      (** security_policy_applying_assets *)
  update_time : string prop;  (** update_time *)
}

type google_dataplex_lake__metastore_status = {
  endpoint : string prop;  (** endpoint *)
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}

type google_dataplex_lake

val google_dataplex_lake :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_dataplex_lake__timeouts ->
  location:string prop ->
  name:string prop ->
  metastore:google_dataplex_lake__metastore list ->
  string ->
  unit
