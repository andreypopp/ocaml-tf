(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudhsm_v2_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_cluster__timeouts *)

type aws_cloudhsm_v2_cluster__cluster_certificates = {
  aws_hardware_certificate : string;  (** aws_hardware_certificate *)
  cluster_certificate : string;  (** cluster_certificate *)
  cluster_csr : string;  (** cluster_csr *)
  hsm_certificate : string;  (** hsm_certificate *)
  manufacturer_hardware_certificate : string;
      (** manufacturer_hardware_certificate *)
}
[@@deriving yojson_of]

type aws_cloudhsm_v2_cluster = {
  hsm_type : string;  (** hsm_type *)
  source_backup_identifier : string option; [@option]
      (** source_backup_identifier *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_cloudhsm_v2_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_cluster *)

let aws_cloudhsm_v2_cluster ?source_backup_identifier ?tags ?timeouts
    ~hsm_type ~subnet_ids __resource_id =
  let __resource_type = "aws_cloudhsm_v2_cluster" in
  let __resource =
    {
      hsm_type;
      source_backup_identifier;
      subnet_ids;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudhsm_v2_cluster __resource);
  ()
