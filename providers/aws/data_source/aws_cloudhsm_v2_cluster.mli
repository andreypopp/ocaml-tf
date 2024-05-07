(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cluster_certificates = {
  aws_hardware_certificate : string prop;
      (** aws_hardware_certificate *)
  cluster_certificate : string prop;  (** cluster_certificate *)
  cluster_csr : string prop;  (** cluster_csr *)
  hsm_certificate : string prop;  (** hsm_certificate *)
  manufacturer_hardware_certificate : string prop;
      (** manufacturer_hardware_certificate *)
}

type aws_cloudhsm_v2_cluster

val aws_cloudhsm_v2_cluster :
  ?cluster_state:string prop ->
  ?id:string prop ->
  cluster_id:string prop ->
  unit ->
  aws_cloudhsm_v2_cluster

val yojson_of_aws_cloudhsm_v2_cluster :
  aws_cloudhsm_v2_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_certificates : cluster_certificates list prop;
  cluster_id : string prop;
  cluster_state : string prop;
  id : string prop;
  security_group_id : string prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cluster_state:string prop ->
  ?id:string prop ->
  cluster_id:string prop ->
  string ->
  t

val make :
  ?cluster_state:string prop ->
  ?id:string prop ->
  cluster_id:string prop ->
  string ->
  t Tf_core.resource
