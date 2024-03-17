(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_license_association__timeouts
type aws_grafana_license_association

type t = private {
  free_trial_expiration : string prop;
  id : string prop;
  license_expiration : string prop;
  license_type : string prop;
  workspace_id : string prop;
}

val aws_grafana_license_association :
  ?id:string prop ->
  ?timeouts:aws_grafana_license_association__timeouts ->
  license_type:string prop ->
  workspace_id:string prop ->
  string ->
  t
