(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type container_provider__info__eks_info = {
  namespace : string prop;  (** namespace *)
}

type container_provider__info = {
  eks_info : container_provider__info__eks_info list;  (** eks_info *)
}

type container_provider = {
  id : string prop;  (** id *)
  info : container_provider__info list;  (** info *)
  type_ : string prop; [@key "type"]  (** type *)
}

type aws_emrcontainers_virtual_cluster

val aws_emrcontainers_virtual_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  virtual_cluster_id:string prop ->
  unit ->
  aws_emrcontainers_virtual_cluster

val yojson_of_aws_emrcontainers_virtual_cluster :
  aws_emrcontainers_virtual_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  container_provider : container_provider list prop;
  created_at : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  virtual_cluster_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  virtual_cluster_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  virtual_cluster_id:string prop ->
  string ->
  t Tf_core.resource
