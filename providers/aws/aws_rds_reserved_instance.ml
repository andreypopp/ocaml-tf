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

type recurring_charges = {
  recurring_charge_amount : float prop;
  recurring_charge_frequency : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurring_charges) -> ()

let yojson_of_recurring_charges =
  (function
   | {
       recurring_charge_amount = v_recurring_charge_amount;
       recurring_charge_frequency = v_recurring_charge_frequency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_recurring_charge_frequency
         in
         ("recurring_charge_frequency", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_recurring_charge_amount
         in
         ("recurring_charge_amount", arg) :: bnds
       in
       `Assoc bnds
    : recurring_charges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurring_charges

[@@@deriving.end]

type aws_rds_reserved_instance = {
  id : string prop option; [@option]
  instance_count : float prop option; [@option]
  offering_id : string prop;
  reservation_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_reserved_instance) -> ()

let yojson_of_aws_rds_reserved_instance =
  (function
   | {
       id = v_id;
       instance_count = v_instance_count;
       offering_id = v_offering_id;
       reservation_id = v_reservation_id;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_reservation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reservation_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offering_id in
         ("offering_id", arg) :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
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
       `Assoc bnds
    : aws_rds_reserved_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_reserved_instance

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_rds_reserved_instance ?id ?instance_count ?reservation_id
    ?tags ?tags_all ?timeouts ~offering_id () :
    aws_rds_reserved_instance =
  {
    id;
    instance_count;
    offering_id;
    reservation_id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  currency_code : string prop;
  db_instance_class : string prop;
  duration : float prop;
  fixed_price : float prop;
  id : string prop;
  instance_count : float prop;
  lease_id : string prop;
  multi_az : bool prop;
  offering_id : string prop;
  offering_type : string prop;
  product_description : string prop;
  recurring_charges : recurring_charges list prop;
  reservation_id : string prop;
  start_time : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  usage_price : float prop;
}

let make ?id ?instance_count ?reservation_id ?tags ?tags_all
    ?timeouts ~offering_id __id =
  let __type = "aws_rds_reserved_instance" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       currency_code = Prop.computed __type __id "currency_code";
       db_instance_class =
         Prop.computed __type __id "db_instance_class";
       duration = Prop.computed __type __id "duration";
       fixed_price = Prop.computed __type __id "fixed_price";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       lease_id = Prop.computed __type __id "lease_id";
       multi_az = Prop.computed __type __id "multi_az";
       offering_id = Prop.computed __type __id "offering_id";
       offering_type = Prop.computed __type __id "offering_type";
       product_description =
         Prop.computed __type __id "product_description";
       recurring_charges =
         Prop.computed __type __id "recurring_charges";
       reservation_id = Prop.computed __type __id "reservation_id";
       start_time = Prop.computed __type __id "start_time";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       usage_price = Prop.computed __type __id "usage_price";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_reserved_instance
        (aws_rds_reserved_instance ?id ?instance_count
           ?reservation_id ?tags ?tags_all ?timeouts ~offering_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?instance_count ?reservation_id ?tags
    ?tags_all ?timeouts ~offering_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?instance_count ?reservation_id ?tags ?tags_all
      ?timeouts ~offering_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
