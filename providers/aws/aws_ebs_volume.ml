(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ebs_volume = {
  availability_zone : string prop;
  encrypted : bool prop option; [@option]
  final_snapshot : bool prop option; [@option]
  id : string prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  multi_attach_enabled : bool prop option; [@option]
  outpost_arn : string prop option; [@option]
  size : float prop option; [@option]
  snapshot_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  throughput : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ebs_volume) -> ()

let yojson_of_aws_ebs_volume =
  (function
   | {
       availability_zone = v_availability_zone;
       encrypted = v_encrypted;
       final_snapshot = v_final_snapshot;
       id = v_id;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       multi_attach_enabled = v_multi_attach_enabled;
       outpost_arn = v_outpost_arn;
       size = v_size;
       snapshot_id = v_snapshot_id;
       tags = v_tags;
       tags_all = v_tags_all;
       throughput = v_throughput;
       type_ = v_type_;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outpost_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outpost_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_multi_attach_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_attach_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
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
         match v_final_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "final_snapshot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : aws_ebs_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ebs_volume

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
