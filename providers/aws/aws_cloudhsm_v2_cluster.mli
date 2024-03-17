(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudhsm_v2_cluster__timeouts

type aws_cloudhsm_v2_cluster__cluster_certificates = {
  aws_hardware_certificate : string prop;
      (** aws_hardware_certificate *)
  cluster_certificate : string prop;  (** cluster_certificate *)
  cluster_csr : string prop;  (** cluster_csr *)
  hsm_certificate : string prop;  (** hsm_certificate *)
  manufacturer_hardware_certificate : string prop;
      (** manufacturer_hardware_certificate *)
}

type aws_cloudhsm_v2_cluster

type t = private {
  cluster_certificates :
    aws_cloudhsm_v2_cluster__cluster_certificates list prop;
  cluster_id : string prop;
  cluster_state : string prop;
  hsm_type : string prop;
  id : string prop;
  security_group_id : string prop;
  source_backup_identifier : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val aws_cloudhsm_v2_cluster :
  ?id:string prop ->
  ?source_backup_identifier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_cloudhsm_v2_cluster__timeouts ->
  hsm_type:string prop ->
  subnet_ids:string prop list ->
  string ->
  t
