(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_ec2_capacity_block_reservation = {
  capacity_block_offering_id : string prop;
  instance_platform : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_capacity_block_reservation) -> ()

let yojson_of_aws_ec2_capacity_block_reservation =
  (function
   | {
       capacity_block_offering_id = v_capacity_block_offering_id;
       instance_platform = v_instance_platform;
       tags = v_tags;
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
         let arg =
           yojson_of_prop yojson_of_string v_instance_platform
         in
         ("instance_platform", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_capacity_block_offering_id
         in
         ("capacity_block_offering_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_capacity_block_reservation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_capacity_block_reservation

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_ec2_capacity_block_reservation ?tags ?timeouts
    ~capacity_block_offering_id ~instance_platform () :
    aws_ec2_capacity_block_reservation =
  { capacity_block_offering_id; instance_platform; tags; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  capacity_block_offering_id : string prop;
  created_date : string prop;
  ebs_optimized : bool prop;
  end_date : string prop;
  end_date_type : string prop;
  id : string prop;
  instance_count : float prop;
  instance_platform : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  placement_group_arn : string prop;
  reservation_type : string prop;
  start_date : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tenancy : string prop;
}

let make ?tags ?timeouts ~capacity_block_offering_id
    ~instance_platform __id =
  let __type = "aws_ec2_capacity_block_reservation" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       capacity_block_offering_id =
         Prop.computed __type __id "capacity_block_offering_id";
       created_date = Prop.computed __type __id "created_date";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       end_date = Prop.computed __type __id "end_date";
       end_date_type = Prop.computed __type __id "end_date_type";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       instance_platform =
         Prop.computed __type __id "instance_platform";
       instance_type = Prop.computed __type __id "instance_type";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       placement_group_arn =
         Prop.computed __type __id "placement_group_arn";
       reservation_type =
         Prop.computed __type __id "reservation_type";
       start_date = Prop.computed __type __id "start_date";
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
      yojson_of_aws_ec2_capacity_block_reservation
        (aws_ec2_capacity_block_reservation ?tags ?timeouts
           ~capacity_block_offering_id ~instance_platform ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?timeouts ~capacity_block_offering_id
    ~instance_platform __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?timeouts ~capacity_block_offering_id
      ~instance_platform __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
