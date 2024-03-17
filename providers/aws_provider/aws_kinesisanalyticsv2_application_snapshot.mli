(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kinesisanalyticsv2_application_snapshot__timeouts
type aws_kinesisanalyticsv2_application_snapshot

val aws_kinesisanalyticsv2_application_snapshot :
  ?id:string prop ->
  ?timeouts:aws_kinesisanalyticsv2_application_snapshot__timeouts ->
  application_name:string prop ->
  snapshot_name:string prop ->
  string ->
  unit
