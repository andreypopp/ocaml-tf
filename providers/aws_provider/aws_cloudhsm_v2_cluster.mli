(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudhsm_v2_cluster__timeouts

type aws_cloudhsm_v2_cluster__cluster_certificates = {
  aws_hardware_certificate : string;  (** aws_hardware_certificate *)
  cluster_certificate : string;  (** cluster_certificate *)
  cluster_csr : string;  (** cluster_csr *)
  hsm_certificate : string;  (** hsm_certificate *)
  manufacturer_hardware_certificate : string;
      (** manufacturer_hardware_certificate *)
}

type aws_cloudhsm_v2_cluster

val aws_cloudhsm_v2_cluster :
  ?id:string ->
  ?source_backup_identifier:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_cloudhsm_v2_cluster__timeouts ->
  hsm_type:string ->
  subnet_ids:string list ->
  string ->
  unit
