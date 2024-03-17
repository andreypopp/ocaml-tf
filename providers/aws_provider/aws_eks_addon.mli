(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_addon__timeouts
type aws_eks_addon

type t = private {
  addon_name : string prop;
  addon_version : string prop;
  arn : string prop;
  cluster_name : string prop;
  configuration_values : string prop;
  created_at : string prop;
  id : string prop;
  modified_at : string prop;
  preserve : bool prop;
  resolve_conflicts : string prop;
  resolve_conflicts_on_create : string prop;
  resolve_conflicts_on_update : string prop;
  service_account_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_eks_addon :
  ?addon_version:string prop ->
  ?configuration_values:string prop ->
  ?id:string prop ->
  ?preserve:bool prop ->
  ?resolve_conflicts:string prop ->
  ?resolve_conflicts_on_create:string prop ->
  ?resolve_conflicts_on_update:string prop ->
  ?service_account_role_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_eks_addon__timeouts ->
  addon_name:string prop ->
  cluster_name:string prop ->
  string ->
  t
