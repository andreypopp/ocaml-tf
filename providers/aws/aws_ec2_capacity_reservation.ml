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

type aws_ec2_capacity_reservation = {
  availability_zone : string prop;
  ebs_optimized : bool prop option; [@option]
  end_date : string prop option; [@option]
  end_date_type : string prop option; [@option]
  ephemeral_storage : bool prop option; [@option]
  id : string prop option; [@option]
  instance_count : float prop;
  instance_match_criteria : string prop option; [@option]
  instance_platform : string prop;
  instance_type : string prop;
  outpost_arn : string prop option; [@option]
  placement_group_arn : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  tenancy : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_capacity_reservation) -> ()

let yojson_of_aws_ec2_capacity_reservation =
  (function
   | {
       availability_zone = v_availability_zone;
       ebs_optimized = v_ebs_optimized;
       end_date = v_end_date;
       end_date_type = v_end_date_type;
       ephemeral_storage = v_ephemeral_storage;
       id = v_id;
       instance_count = v_instance_count;
       instance_match_criteria = v_instance_match_criteria;
       instance_platform = v_instance_platform;
       instance_type = v_instance_type;
       outpost_arn = v_outpost_arn;
       placement_group_arn = v_placement_group_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       tenancy = v_tenancy;
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
         match v_tenancy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenancy", arg in
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
         match v_placement_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "placement_group_arn", arg in
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_platform
         in
         ("instance_platform", arg) :: bnds
       in
       let bnds =
         match v_instance_match_criteria with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_match_criteria", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
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
         match v_ephemeral_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ephemeral_storage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_date_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_date_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebs_optimized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ebs_optimized", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_capacity_reservation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_capacity_reservation

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ec2_capacity_reservation ?ebs_optimized ?end_date
    ?end_date_type ?ephemeral_storage ?id ?instance_match_criteria
    ?outpost_arn ?placement_group_arn ?tags ?tags_all ?tenancy
    ?timeouts ~availability_zone ~instance_count ~instance_platform
    ~instance_type () : aws_ec2_capacity_reservation =
  {
    availability_zone;
    ebs_optimized;
    end_date;
    end_date_type;
    ephemeral_storage;
    id;
    instance_count;
    instance_match_criteria;
    instance_platform;
    instance_type;
    outpost_arn;
    placement_group_arn;
    tags;
    tags_all;
    tenancy;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  ebs_optimized : bool prop;
  end_date : string prop;
  end_date_type : string prop;
  ephemeral_storage : bool prop;
  id : string prop;
  instance_count : float prop;
  instance_match_criteria : string prop;
  instance_platform : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  placement_group_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tenancy : string prop;
}

let make ?ebs_optimized ?end_date ?end_date_type ?ephemeral_storage
    ?id ?instance_match_criteria ?outpost_arn ?placement_group_arn
    ?tags ?tags_all ?tenancy ?timeouts ~availability_zone
    ~instance_count ~instance_platform ~instance_type __id =
  let __type = "aws_ec2_capacity_reservation" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       end_date = Prop.computed __type __id "end_date";
       end_date_type = Prop.computed __type __id "end_date_type";
       ephemeral_storage =
         Prop.computed __type __id "ephemeral_storage";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       instance_match_criteria =
         Prop.computed __type __id "instance_match_criteria";
       instance_platform =
         Prop.computed __type __id "instance_platform";
       instance_type = Prop.computed __type __id "instance_type";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       owner_id = Prop.computed __type __id "owner_id";
       placement_group_arn =
         Prop.computed __type __id "placement_group_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tenancy = Prop.computed __type __id "tenancy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_capacity_reservation
        (aws_ec2_capacity_reservation ?ebs_optimized ?end_date
           ?end_date_type ?ephemeral_storage ?id
           ?instance_match_criteria ?outpost_arn ?placement_group_arn
           ?tags ?tags_all ?tenancy ?timeouts ~availability_zone
           ~instance_count ~instance_platform ~instance_type ());
    attrs = __attrs;
  }

let register ?tf_module ?ebs_optimized ?end_date ?end_date_type
    ?ephemeral_storage ?id ?instance_match_criteria ?outpost_arn
    ?placement_group_arn ?tags ?tags_all ?tenancy ?timeouts
    ~availability_zone ~instance_count ~instance_platform
    ~instance_type __id =
  let (r : _ Tf_core.resource) =
    make ?ebs_optimized ?end_date ?end_date_type ?ephemeral_storage
      ?id ?instance_match_criteria ?outpost_arn ?placement_group_arn
      ?tags ?tags_all ?tenancy ?timeouts ~availability_zone
      ~instance_count ~instance_platform ~instance_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
