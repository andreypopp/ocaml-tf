(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  no_device : bool prop option; [@option]  (** no_device *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** ebs_block_device *)

type ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
}
[@@deriving yojson_of]
(** ephemeral_block_device *)

type metadata_options = {
  http_endpoint : string prop option; [@option]  (** http_endpoint *)
  http_put_response_hop_limit : float prop option; [@option]
      (** http_put_response_hop_limit *)
  http_tokens : string prop option; [@option]  (** http_tokens *)
}
[@@deriving yojson_of]
(** metadata_options *)

type root_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** root_block_device *)

type aws_launch_configuration = {
  associate_public_ip_address : bool prop option; [@option]
      (** associate_public_ip_address *)
  ebs_optimized : bool prop option; [@option]  (** ebs_optimized *)
  enable_monitoring : bool prop option; [@option]
      (** enable_monitoring *)
  iam_instance_profile : string prop option; [@option]
      (** iam_instance_profile *)
  id : string prop option; [@option]  (** id *)
  image_id : string prop;  (** image_id *)
  instance_type : string prop;  (** instance_type *)
  key_name : string prop option; [@option]  (** key_name *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  placement_tenancy : string prop option; [@option]
      (** placement_tenancy *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  spot_price : string prop option; [@option]  (** spot_price *)
  user_data : string prop option; [@option]  (** user_data *)
  user_data_base64 : string prop option; [@option]
      (** user_data_base64 *)
  ebs_block_device : ebs_block_device list;
  ephemeral_block_device : ephemeral_block_device list;
  metadata_options : metadata_options list;
  root_block_device : root_block_device list;
}
[@@deriving yojson_of]
(** aws_launch_configuration *)

let ebs_block_device ?delete_on_termination ?encrypted ?iops
    ?no_device ?snapshot_id ?throughput ?volume_size ?volume_type
    ~device_name () : ebs_block_device =
  {
    delete_on_termination;
    device_name;
    encrypted;
    iops;
    no_device;
    snapshot_id;
    throughput;
    volume_size;
    volume_type;
  }

let ephemeral_block_device ?no_device ?virtual_name ~device_name () :
    ephemeral_block_device =
  { device_name; no_device; virtual_name }

let metadata_options ?http_endpoint ?http_put_response_hop_limit
    ?http_tokens () : metadata_options =
  { http_endpoint; http_put_response_hop_limit; http_tokens }

let root_block_device ?delete_on_termination ?encrypted ?iops
    ?throughput ?volume_size ?volume_type () : root_block_device =
  {
    delete_on_termination;
    encrypted;
    iops;
    throughput;
    volume_size;
    volume_type;
  }

let aws_launch_configuration ?associate_public_ip_address
    ?ebs_optimized ?enable_monitoring ?iam_instance_profile ?id
    ?key_name ?name ?name_prefix ?placement_tenancy ?security_groups
    ?spot_price ?user_data ?user_data_base64 ~image_id ~instance_type
    ~ebs_block_device ~ephemeral_block_device ~metadata_options
    ~root_block_device () : aws_launch_configuration =
  {
    associate_public_ip_address;
    ebs_optimized;
    enable_monitoring;
    iam_instance_profile;
    id;
    image_id;
    instance_type;
    key_name;
    name;
    name_prefix;
    placement_tenancy;
    security_groups;
    spot_price;
    user_data;
    user_data_base64;
    ebs_block_device;
    ephemeral_block_device;
    metadata_options;
    root_block_device;
  }

type t = {
  arn : string prop;
  associate_public_ip_address : bool prop;
  ebs_optimized : bool prop;
  enable_monitoring : bool prop;
  iam_instance_profile : string prop;
  id : string prop;
  image_id : string prop;
  instance_type : string prop;
  key_name : string prop;
  name : string prop;
  name_prefix : string prop;
  placement_tenancy : string prop;
  security_groups : string list prop;
  spot_price : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
}

let make ?associate_public_ip_address ?ebs_optimized
    ?enable_monitoring ?iam_instance_profile ?id ?key_name ?name
    ?name_prefix ?placement_tenancy ?security_groups ?spot_price
    ?user_data ?user_data_base64 ~image_id ~instance_type
    ~ebs_block_device ~ephemeral_block_device ~metadata_options
    ~root_block_device __id =
  let __type = "aws_launch_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       associate_public_ip_address =
         Prop.computed __type __id "associate_public_ip_address";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       enable_monitoring =
         Prop.computed __type __id "enable_monitoring";
       iam_instance_profile =
         Prop.computed __type __id "iam_instance_profile";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       instance_type = Prop.computed __type __id "instance_type";
       key_name = Prop.computed __type __id "key_name";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       placement_tenancy =
         Prop.computed __type __id "placement_tenancy";
       security_groups = Prop.computed __type __id "security_groups";
       spot_price = Prop.computed __type __id "spot_price";
       user_data = Prop.computed __type __id "user_data";
       user_data_base64 =
         Prop.computed __type __id "user_data_base64";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_launch_configuration
        (aws_launch_configuration ?associate_public_ip_address
           ?ebs_optimized ?enable_monitoring ?iam_instance_profile
           ?id ?key_name ?name ?name_prefix ?placement_tenancy
           ?security_groups ?spot_price ?user_data ?user_data_base64
           ~image_id ~instance_type ~ebs_block_device
           ~ephemeral_block_device ~metadata_options
           ~root_block_device ());
    attrs = __attrs;
  }

let register ?tf_module ?associate_public_ip_address ?ebs_optimized
    ?enable_monitoring ?iam_instance_profile ?id ?key_name ?name
    ?name_prefix ?placement_tenancy ?security_groups ?spot_price
    ?user_data ?user_data_base64 ~image_id ~instance_type
    ~ebs_block_device ~ephemeral_block_device ~metadata_options
    ~root_block_device __id =
  let (r : _ Tf_core.resource) =
    make ?associate_public_ip_address ?ebs_optimized
      ?enable_monitoring ?iam_instance_profile ?id ?key_name ?name
      ?name_prefix ?placement_tenancy ?security_groups ?spot_price
      ?user_data ?user_data_base64 ~image_id ~instance_type
      ~ebs_block_device ~ephemeral_block_device ~metadata_options
      ~root_block_device __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
