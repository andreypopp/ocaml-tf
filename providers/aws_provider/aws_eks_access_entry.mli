(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_access_entry__timeouts
type aws_eks_access_entry

val aws_eks_access_entry :
  ?tags:(string * string) list ->
  ?type_:string ->
  ?timeouts:aws_eks_access_entry__timeouts ->
  cluster_name:string ->
  principal_arn:string ->
  string ->
  unit
