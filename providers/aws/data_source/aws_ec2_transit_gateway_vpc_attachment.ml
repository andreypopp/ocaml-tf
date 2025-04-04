(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
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

type aws_ec2_transit_gateway_vpc_attachment = {
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_vpc_attachment) -> ()

let yojson_of_aws_ec2_transit_gateway_vpc_attachment =
  (function
   | {
       id = v_id;
       tags = v_tags;
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
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_vpc_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_vpc_attachment

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ec2_transit_gateway_vpc_attachment ?id ?tags ?timeouts
    ~filter () : aws_ec2_transit_gateway_vpc_attachment =
  { id; tags; filter; timeouts }

type t = {
  tf_name : string;
  appliance_mode_support : string prop;
  dns_support : string prop;
  id : string prop;
  ipv6_support : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  transit_gateway_id : string prop;
  vpc_id : string prop;
  vpc_owner_id : string prop;
}

let make ?id ?tags ?timeouts ~filter __id =
  let __type = "aws_ec2_transit_gateway_vpc_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       appliance_mode_support =
         Prop.computed __type __id "appliance_mode_support";
       dns_support = Prop.computed __type __id "dns_support";
       id = Prop.computed __type __id "id";
       ipv6_support = Prop.computed __type __id "ipv6_support";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_owner_id = Prop.computed __type __id "vpc_owner_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_vpc_attachment
        (aws_ec2_transit_gateway_vpc_attachment ?id ?tags ?timeouts
           ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
