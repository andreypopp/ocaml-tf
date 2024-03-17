(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_storagegateway_cached_iscsi_volume = {
  gateway_arn : string;  (** gateway_arn *)
  kms_encrypted : bool option; [@option]  (** kms_encrypted *)
  kms_key : string option; [@option]  (** kms_key *)
  network_interface_id : string;  (** network_interface_id *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  source_volume_arn : string option; [@option]
      (** source_volume_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_name : string;  (** target_name *)
  volume_size_in_bytes : float;  (** volume_size_in_bytes *)
}
[@@deriving yojson_of]
(** aws_storagegateway_cached_iscsi_volume *)

let aws_storagegateway_cached_iscsi_volume ?kms_encrypted ?kms_key
    ?snapshot_id ?source_volume_arn ?tags ~gateway_arn
    ~network_interface_id ~target_name ~volume_size_in_bytes
    __resource_id =
  let __resource_type = "aws_storagegateway_cached_iscsi_volume" in
  let __resource =
    {
      gateway_arn;
      kms_encrypted;
      kms_key;
      network_interface_id;
      snapshot_id;
      source_volume_arn;
      tags;
      target_name;
      volume_size_in_bytes;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_cached_iscsi_volume __resource);
  ()
