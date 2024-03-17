(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_role_association__timeouts
type aws_grafana_role_association

val aws_grafana_role_association :
  ?group_ids:string list ->
  ?user_ids:string list ->
  ?timeouts:aws_grafana_role_association__timeouts ->
  role:string ->
  workspace_id:string ->
  string ->
  unit
