(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ebs_volume = {
  availability_zone : string prop;  (** availability_zone *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  final_snapshot : bool prop option; [@option]  (** final_snapshot *)
  id : string prop option; [@option]  (** id *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  multi_attach_enabled : bool prop option; [@option]
      (** multi_attach_enabled *)
  outpost_arn : string prop option; [@option]  (** outpost_arn *)
  size : float prop option; [@option]  (** size *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput : float prop option; [@option]  (** throughput *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_volume *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ebs_volume ?encrypted ?final_snapshot ?id ?iops ?kms_key_id
    ?multi_attach_enabled ?outpost_arn ?size ?snapshot_id ?tags
    ?tags_all ?throughput ?type_ ?timeouts ~availability_zone () :
    aws_ebs_volume =
  {
    availability_zone;
    encrypted;
    final_snapshot;
    id;
    iops;
    kms_key_id;
    multi_attach_enabled;
    outpost_arn;
    size;
    snapshot_id;
    tags;
    tags_all;
    throughput;
    type_;
    timeouts;
  }

type t = {
  arn : string prop;
  availability_zone : string prop;
  encrypted : bool prop;
  final_snapshot : bool prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  multi_attach_enabled : bool prop;
  outpost_arn : string prop;
  size : float prop;
  snapshot_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  throughput : float prop;
  type_ : string prop;
}

let make ?encrypted ?final_snapshot ?id ?iops ?kms_key_id
    ?multi_attach_enabled ?outpost_arn ?size ?snapshot_id ?tags
    ?tags_all ?throughput ?type_ ?timeouts ~availability_zone __id =
  let __type = "aws_ebs_volume" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       encrypted = Prop.computed __type __id "encrypted";
       final_snapshot = Prop.computed __type __id "final_snapshot";
       id = Prop.computed __type __id "id";
       iops = Prop.computed __type __id "iops";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       multi_attach_enabled =
         Prop.computed __type __id "multi_attach_enabled";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       size = Prop.computed __type __id "size";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       throughput = Prop.computed __type __id "throughput";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_volume
        (aws_ebs_volume ?encrypted ?final_snapshot ?id ?iops
           ?kms_key_id ?multi_attach_enabled ?outpost_arn ?size
           ?snapshot_id ?tags ?tags_all ?throughput ?type_ ?timeouts
           ~availability_zone ());
    attrs = __attrs;
  }

let register ?tf_module ?encrypted ?final_snapshot ?id ?iops
    ?kms_key_id ?multi_attach_enabled ?outpost_arn ?size ?snapshot_id
    ?tags ?tags_all ?throughput ?type_ ?timeouts ~availability_zone
    __id =
  let (r : _ Tf_core.resource) =
    make ?encrypted ?final_snapshot ?id ?iops ?kms_key_id
      ?multi_attach_enabled ?outpost_arn ?size ?snapshot_id ?tags
      ?tags_all ?throughput ?type_ ?timeouts ~availability_zone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
