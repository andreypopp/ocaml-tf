(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_role_association__timeouts
type aws_grafana_role_association

val aws_grafana_role_association :
  ?group_ids:string prop list ->
  ?id:string prop ->
  ?user_ids:string prop list ->
  ?timeouts:aws_grafana_role_association__timeouts ->
  role:string prop ->
  workspace_id:string prop ->
  string ->
  unit
