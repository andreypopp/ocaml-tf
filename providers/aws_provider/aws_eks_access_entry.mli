(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_access_entry__timeouts
type aws_eks_access_entry

val aws_eks_access_entry :
  ?id:string prop ->
  ?kubernetes_groups:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?user_name:string prop ->
  ?timeouts:aws_eks_access_entry__timeouts ->
  cluster_name:string prop ->
  principal_arn:string prop ->
  string ->
  unit
