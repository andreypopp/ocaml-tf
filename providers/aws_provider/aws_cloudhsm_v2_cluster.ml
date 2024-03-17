(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudhsm_v2_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_cluster__timeouts *)

type aws_cloudhsm_v2_cluster__cluster_certificates = {
  aws_hardware_certificate : string prop;
      (** aws_hardware_certificate *)
  cluster_certificate : string prop;  (** cluster_certificate *)
  cluster_csr : string prop;  (** cluster_csr *)
  hsm_certificate : string prop;  (** hsm_certificate *)
  manufacturer_hardware_certificate : string prop;
      (** manufacturer_hardware_certificate *)
}
[@@deriving yojson_of]

type aws_cloudhsm_v2_cluster = {
  hsm_type : string prop;  (** hsm_type *)
  id : string prop option; [@option]  (** id *)
  source_backup_identifier : string prop option; [@option]
      (** source_backup_identifier *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_cloudhsm_v2_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_cluster *)

let aws_cloudhsm_v2_cluster ?id ?source_backup_identifier ?tags
    ?tags_all ?timeouts ~hsm_type ~subnet_ids __resource_id =
  let __resource_type = "aws_cloudhsm_v2_cluster" in
  let __resource =
    {
      hsm_type;
      id;
      source_backup_identifier;
      subnet_ids;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudhsm_v2_cluster __resource);
  ()
