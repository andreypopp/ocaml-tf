(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_pod_identity_association

type t = private {
  association_arn : string prop;
  association_id : string prop;
  cluster_name : string prop;
  id : string prop;
  namespace : string prop;
  role_arn : string prop;
  service_account : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_eks_pod_identity_association :
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  namespace:string prop ->
  role_arn:string prop ->
  service_account:string prop ->
  string ->
  t
