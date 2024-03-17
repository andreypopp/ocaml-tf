(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_license_association__timeouts
type aws_grafana_license_association

val aws_grafana_license_association :
  ?id:string prop ->
  ?timeouts:aws_grafana_license_association__timeouts ->
  license_type:string prop ->
  workspace_id:string prop ->
  string ->
  unit
