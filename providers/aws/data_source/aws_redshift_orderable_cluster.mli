(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_orderable_cluster

val aws_redshift_orderable_cluster :
  ?cluster_type:string prop ->
  ?cluster_version:string prop ->
  ?id:string prop ->
  ?node_type:string prop ->
  ?preferred_node_types:string prop list ->
  unit ->
  aws_redshift_orderable_cluster

val yojson_of_aws_redshift_orderable_cluster :
  aws_redshift_orderable_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  availability_zones : string list prop;
  cluster_type : string prop;
  cluster_version : string prop;
  id : string prop;
  node_type : string prop;
  preferred_node_types : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cluster_type:string prop ->
  ?cluster_version:string prop ->
  ?id:string prop ->
  ?node_type:string prop ->
  ?preferred_node_types:string prop list ->
  string ->
  t

val make :
  ?cluster_type:string prop ->
  ?cluster_version:string prop ->
  ?id:string prop ->
  ?node_type:string prop ->
  ?preferred_node_types:string prop list ->
  string ->
  t Tf_core.resource
