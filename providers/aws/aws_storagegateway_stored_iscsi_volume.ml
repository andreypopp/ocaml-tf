(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_stored_iscsi_volume = {
  disk_id : string prop;  (** disk_id *)
  gateway_arn : string prop;  (** gateway_arn *)
  id : string prop option; [@option]  (** id *)
  kms_encrypted : bool prop option; [@option]  (** kms_encrypted *)
  kms_key : string prop option; [@option]  (** kms_key *)
  network_interface_id : string prop;  (** network_interface_id *)
  preserve_existing_data : bool prop;  (** preserve_existing_data *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_name : string prop;  (** target_name *)
}
[@@deriving yojson_of]
(** aws_storagegateway_stored_iscsi_volume *)

let aws_storagegateway_stored_iscsi_volume ?id ?kms_encrypted
    ?kms_key ?snapshot_id ?tags ?tags_all ~disk_id ~gateway_arn
    ~network_interface_id ~preserve_existing_data ~target_name () :
    aws_storagegateway_stored_iscsi_volume =
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

type t = {
  arn : string prop;
  chap_enabled : bool prop;
  disk_id : string prop;
  gateway_arn : string prop;
  id : string prop;
  kms_encrypted : bool prop;
  kms_key : string prop;
  lun_number : float prop;
  network_interface_id : string prop;
  network_interface_port : float prop;
  preserve_existing_data : bool prop;
  snapshot_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
  target_name : string prop;
  volume_attachment_status : string prop;
  volume_id : string prop;
  volume_size_in_bytes : float prop;
  volume_status : string prop;
  volume_type : string prop;
}

let make ?id ?kms_encrypted ?kms_key ?snapshot_id ?tags ?tags_all
    ~disk_id ~gateway_arn ~network_interface_id
    ~preserve_existing_data ~target_name __id =
  let __type = "aws_storagegateway_stored_iscsi_volume" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       chap_enabled = Prop.computed __type __id "chap_enabled";
       disk_id = Prop.computed __type __id "disk_id";
       gateway_arn = Prop.computed __type __id "gateway_arn";
       id = Prop.computed __type __id "id";
       kms_encrypted = Prop.computed __type __id "kms_encrypted";
       kms_key = Prop.computed __type __id "kms_key";
       lun_number = Prop.computed __type __id "lun_number";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       network_interface_port =
         Prop.computed __type __id "network_interface_port";
       preserve_existing_data =
         Prop.computed __type __id "preserve_existing_data";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_arn = Prop.computed __type __id "target_arn";
       target_name = Prop.computed __type __id "target_name";
       volume_attachment_status =
         Prop.computed __type __id "volume_attachment_status";
       volume_id = Prop.computed __type __id "volume_id";
       volume_size_in_bytes =
         Prop.computed __type __id "volume_size_in_bytes";
       volume_status = Prop.computed __type __id "volume_status";
       volume_type = Prop.computed __type __id "volume_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_stored_iscsi_volume
        (aws_storagegateway_stored_iscsi_volume ?id ?kms_encrypted
           ?kms_key ?snapshot_id ?tags ?tags_all ~disk_id
           ~gateway_arn ~network_interface_id ~preserve_existing_data
           ~target_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_encrypted ?kms_key ?snapshot_id
    ?tags ?tags_all ~disk_id ~gateway_arn ~network_interface_id
    ~preserve_existing_data ~target_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_encrypted ?kms_key ?snapshot_id ?tags ?tags_all
      ~disk_id ~gateway_arn ~network_interface_id
      ~preserve_existing_data ~target_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
