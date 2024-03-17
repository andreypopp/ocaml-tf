(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_license_association__timeouts
type aws_grafana_license_association

val aws_grafana_license_association :
  ?id:string ->
  ?timeouts:aws_grafana_license_association__timeouts ->
  license_type:string ->
  workspace_id:string ->
  string ->
  unit
