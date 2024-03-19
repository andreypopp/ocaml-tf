(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_eks_pod_identity_association

val aws_eks_pod_identity_association :
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  namespace:string prop ->
  role_arn:string prop ->
  service_account:string prop ->
  unit ->
  aws_eks_pod_identity_association

val yojson_of_aws_eks_pod_identity_association :
  aws_eks_pod_identity_association -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  namespace:string prop ->
  role_arn:string prop ->
  service_account:string prop ->
  string ->
  t
