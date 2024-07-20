(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_capacity_block_offering = {
  capacity_duration_hours : float prop;
  end_date_range : string prop option; [@option]
  instance_count : float prop;
  instance_type : string prop;
  start_date_range : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_capacity_block_offering) -> ()

let yojson_of_aws_ec2_capacity_block_offering =
  (function
   | {
       capacity_duration_hours = v_capacity_duration_hours;
       end_date_range = v_end_date_range;
       instance_count = v_instance_count;
       instance_type = v_instance_type;
       start_date_range = v_start_date_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_date_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_date_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       let bnds =
         match v_end_date_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_date_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_capacity_duration_hours
         in
         ("capacity_duration_hours", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_capacity_block_offering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_capacity_block_offering

[@@@deriving.end]

let aws_ec2_capacity_block_offering ?end_date_range ?start_date_range
    ~capacity_duration_hours ~instance_count ~instance_type () :
    aws_ec2_capacity_block_offering =
  {
    capacity_duration_hours;
    end_date_range;
    instance_count;
    instance_type;
    start_date_range;
  }

type t = {
  tf_name : string;
  availability_zone : string prop;
  capacity_block_offering_id : string prop;
  capacity_duration_hours : float prop;
  currency_code : string prop;
  end_date_range : string prop;
  instance_count : float prop;
  instance_type : string prop;
  start_date_range : string prop;
  tenancy : string prop;
  upfront_fee : string prop;
}

let make ?end_date_range ?start_date_range ~capacity_duration_hours
    ~instance_count ~instance_type __id =
  let __type = "aws_ec2_capacity_block_offering" in
  let __attrs =
    ({
       tf_name = __id;
       availability_zone =
         Prop.computed __type __id "availability_zone";
       capacity_block_offering_id =
         Prop.computed __type __id "capacity_block_offering_id";
       capacity_duration_hours =
         Prop.computed __type __id "capacity_duration_hours";
       currency_code = Prop.computed __type __id "currency_code";
       end_date_range = Prop.computed __type __id "end_date_range";
       instance_count = Prop.computed __type __id "instance_count";
       instance_type = Prop.computed __type __id "instance_type";
       start_date_range =
         Prop.computed __type __id "start_date_range";
       tenancy = Prop.computed __type __id "tenancy";
       upfront_fee = Prop.computed __type __id "upfront_fee";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_capacity_block_offering
        (aws_ec2_capacity_block_offering ?end_date_range
           ?start_date_range ~capacity_duration_hours ~instance_count
           ~instance_type ());
    attrs = __attrs;
  }

let register ?tf_module ?end_date_range ?start_date_range
    ~capacity_duration_hours ~instance_count ~instance_type __id =
  let (r : _ Tf_core.resource) =
    make ?end_date_range ?start_date_range ~capacity_duration_hours
      ~instance_count ~instance_type __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
