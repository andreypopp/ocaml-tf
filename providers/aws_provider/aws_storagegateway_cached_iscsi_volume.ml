(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_cached_iscsi_volume = {
  gateway_arn : string prop;  (** gateway_arn *)
  id : string prop option; [@option]  (** id *)
  kms_encrypted : bool prop option; [@option]  (** kms_encrypted *)
  kms_key : string prop option; [@option]  (** kms_key *)
  network_interface_id : string prop;  (** network_interface_id *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  source_volume_arn : string prop option; [@option]
      (** source_volume_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_name : string prop;  (** target_name *)
  volume_size_in_bytes : float prop;  (** volume_size_in_bytes *)
}
[@@deriving yojson_of]
(** aws_storagegateway_cached_iscsi_volume *)

let aws_storagegateway_cached_iscsi_volume ?id ?kms_encrypted
    ?kms_key ?snapshot_id ?source_volume_arn ?tags ?tags_all
    ~gateway_arn ~network_interface_id ~target_name
    ~volume_size_in_bytes __resource_id =
  let __resource_type = "aws_storagegateway_cached_iscsi_volume" in
  let __resource =
    {
      gateway_arn;
      id;
      kms_encrypted;
      kms_key;
      network_interface_id;
      snapshot_id;
      source_volume_arn;
      tags;
      tags_all;
      target_name;
      volume_size_in_bytes;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_cached_iscsi_volume __resource);
  ()
