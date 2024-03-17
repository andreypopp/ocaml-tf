(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_addon__timeouts
type aws_eks_addon

val aws_eks_addon :
  ?addon_version:string ->
  ?configuration_values:string ->
  ?id:string ->
  ?preserve:bool ->
  ?resolve_conflicts:string ->
  ?resolve_conflicts_on_create:string ->
  ?resolve_conflicts_on_update:string ->
  ?service_account_role_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_eks_addon__timeouts ->
  addon_name:string ->
  cluster_name:string ->
  string ->
  unit
