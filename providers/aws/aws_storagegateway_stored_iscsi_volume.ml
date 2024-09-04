(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_stored_iscsi_volume = {
  disk_id : string prop;
  gateway_arn : string prop;
  id : string prop option; [@option]
  kms_encrypted : bool prop option; [@option]
  kms_key : string prop option; [@option]
  network_interface_id : string prop;
  preserve_existing_data : bool prop;
  snapshot_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  target_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_stored_iscsi_volume) -> ()

let yojson_of_aws_storagegateway_stored_iscsi_volume =
  (function
   | {
       disk_id = v_disk_id;
       gateway_arn = v_gateway_arn;
       id = v_id;
       kms_encrypted = v_kms_encrypted;
       kms_key = v_kms_key;
       network_interface_id = v_network_interface_id;
       preserve_existing_data = v_preserve_existing_data;
       snapshot_id = v_snapshot_id;
       tags = v_tags;
       tags_all = v_tags_all;
       target_name = v_target_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_name in
         ("target_name", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_preserve_existing_data
         in
         ("preserve_existing_data", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kms_encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_arn in
         ("gateway_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_id in
         ("disk_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_storagegateway_stored_iscsi_volume ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_stored_iscsi_volume

[@@@deriving.end]

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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
       tf_name = __id;
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
