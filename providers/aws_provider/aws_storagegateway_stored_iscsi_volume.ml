(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_stored_iscsi_volume = {
  disk_id : string;  (** disk_id *)
  gateway_arn : string;  (** gateway_arn *)
  id : string option; [@option]  (** id *)
  kms_encrypted : bool option; [@option]  (** kms_encrypted *)
  kms_key : string option; [@option]  (** kms_key *)
  network_interface_id : string;  (** network_interface_id *)
  preserve_existing_data : bool;  (** preserve_existing_data *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  target_name : string;  (** target_name *)
}
[@@deriving yojson_of]
(** aws_storagegateway_stored_iscsi_volume *)

let aws_storagegateway_stored_iscsi_volume ?id ?kms_encrypted
    ?kms_key ?snapshot_id ?tags ?tags_all ~disk_id ~gateway_arn
    ~network_interface_id ~preserve_existing_data ~target_name
    __resource_id =
  let __resource_type = "aws_storagegateway_stored_iscsi_volume" in
  let __resource =
    {
      disk_id;
      gateway_arn;
      id;
      kms_encrypted;
      kms_key;
      network_interface_id;
      preserve_existing_data;
      snapshot_id;
      tags;
      tags_all;
      target_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_stored_iscsi_volume __resource);
  ()
