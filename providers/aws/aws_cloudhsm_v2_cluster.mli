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

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_cloudhsm_v2_cluster

val aws_cloudhsm_v2_cluster :
  ?id:string prop ->
  ?source_backup_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  hsm_type:string prop ->
  subnet_ids:string prop list ->
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
  hsm_type : string prop;
  id : string prop;
  security_group_id : string prop;
  source_backup_identifier : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?source_backup_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  hsm_type:string prop ->
  subnet_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?source_backup_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  hsm_type:string prop ->
  subnet_ids:string prop list ->
  string ->
  t Tf_core.resource
