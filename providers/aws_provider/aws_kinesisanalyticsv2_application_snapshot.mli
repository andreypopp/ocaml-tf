(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kinesisanalyticsv2_application_snapshot__timeouts
type aws_kinesisanalyticsv2_application_snapshot

type t = private {
  application_name : string prop;
  application_version_id : float prop;
  id : string prop;
  snapshot_creation_timestamp : string prop;
  snapshot_name : string prop;
}

val aws_kinesisanalyticsv2_application_snapshot :
  ?id:string prop ->
  ?timeouts:aws_kinesisanalyticsv2_application_snapshot__timeouts ->
  application_name:string prop ->
  snapshot_name:string prop ->
  string ->
  t
