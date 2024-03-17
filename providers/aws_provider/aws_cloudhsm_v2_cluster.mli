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

val aws_cloudhsm_v2_cluster :
  ?id:string prop ->
  ?source_backup_identifier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_cloudhsm_v2_cluster__timeouts ->
  hsm_type:string prop ->
  subnet_ids:string prop list ->
  string ->
  unit
