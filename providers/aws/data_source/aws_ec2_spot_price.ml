(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ec2_spot_price = {
  availability_zone : string prop option; [@option]
  id : string prop option; [@option]
  instance_type : string prop option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_spot_price) -> ()

let yojson_of_aws_ec2_spot_price =
  (function
   | {
       availability_zone = v_availability_zone;
       id = v_id;
       instance_type = v_instance_type;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
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
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_spot_price -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_spot_price

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ec2_spot_price ?availability_zone ?id ?instance_type
    ?timeouts ~filter () : aws_ec2_spot_price =
  { availability_zone; id; instance_type; filter; timeouts }

type t = {
  tf_name : string;
  availability_zone : string prop;
  id : string prop;
  instance_type : string prop;
  spot_price : string prop;
  spot_price_timestamp : string prop;
}

let make ?availability_zone ?id ?instance_type ?timeouts ~filter __id
    =
  let __type = "aws_ec2_spot_price" in
  let __attrs =
    ({
       tf_name = __id;
       availability_zone =
         Prop.computed __type __id "availability_zone";
       id = Prop.computed __type __id "id";
       instance_type = Prop.computed __type __id "instance_type";
       spot_price = Prop.computed __type __id "spot_price";
       spot_price_timestamp =
         Prop.computed __type __id "spot_price_timestamp";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_spot_price
        (aws_ec2_spot_price ?availability_zone ?id ?instance_type
           ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone ?id ?instance_type
    ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone ?id ?instance_type ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
