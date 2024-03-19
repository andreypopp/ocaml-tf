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
    ~volume_size_in_bytes () : aws_storagegateway_cached_iscsi_volume
    =
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

type t = {
  arn : string prop;
  chap_enabled : bool prop;
  gateway_arn : string prop;
  id : string prop;
  kms_encrypted : bool prop;
  kms_key : string prop;
  lun_number : float prop;
  network_interface_id : string prop;
  network_interface_port : float prop;
  snapshot_id : string prop;
  source_volume_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
  target_name : string prop;
  volume_arn : string prop;
  volume_id : string prop;
  volume_size_in_bytes : float prop;
}

let register ?tf_module ?id ?kms_encrypted ?kms_key ?snapshot_id
    ?source_volume_arn ?tags ?tags_all ~gateway_arn
    ~network_interface_id ~target_name ~volume_size_in_bytes
    __resource_id =
  let __resource_type = "aws_storagegateway_cached_iscsi_volume" in
  let __resource =
    aws_storagegateway_cached_iscsi_volume ?id ?kms_encrypted
      ?kms_key ?snapshot_id ?source_volume_arn ?tags ?tags_all
      ~gateway_arn ~network_interface_id ~target_name
      ~volume_size_in_bytes ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_cached_iscsi_volume __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       chap_enabled =
         Prop.computed __resource_type __resource_id "chap_enabled";
       gateway_arn =
         Prop.computed __resource_type __resource_id "gateway_arn";
       id = Prop.computed __resource_type __resource_id "id";
       kms_encrypted =
         Prop.computed __resource_type __resource_id "kms_encrypted";
       kms_key =
         Prop.computed __resource_type __resource_id "kms_key";
       lun_number =
         Prop.computed __resource_type __resource_id "lun_number";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
       network_interface_port =
         Prop.computed __resource_type __resource_id
           "network_interface_port";
       snapshot_id =
         Prop.computed __resource_type __resource_id "snapshot_id";
       source_volume_arn =
         Prop.computed __resource_type __resource_id
           "source_volume_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_arn =
         Prop.computed __resource_type __resource_id "target_arn";
       target_name =
         Prop.computed __resource_type __resource_id "target_name";
       volume_arn =
         Prop.computed __resource_type __resource_id "volume_arn";
       volume_id =
         Prop.computed __resource_type __resource_id "volume_id";
       volume_size_in_bytes =
         Prop.computed __resource_type __resource_id
           "volume_size_in_bytes";
     }
      : t)
  in
  __resource_attributes
