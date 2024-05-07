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

type aws_vpn_gateway = {
  amazon_side_asn : string prop option; [@option]
  attached_vpc_id : string prop option; [@option]
  availability_zone : string prop option; [@option]
  id : string prop option; [@option]
  state : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpn_gateway) -> ()

let yojson_of_aws_vpn_gateway =
  (function
   | {
       amazon_side_asn = v_amazon_side_asn;
       attached_vpc_id = v_attached_vpc_id;
       availability_zone = v_availability_zone;
       id = v_id;
       state = v_state;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
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
       let bnds =
         match v_attached_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attached_vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amazon_side_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amazon_side_asn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpn_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpn_gateway

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_vpn_gateway ?amazon_side_asn ?attached_vpc_id
    ?availability_zone ?id ?state ?tags ?timeouts ~filter () :
    aws_vpn_gateway =
  {
    amazon_side_asn;
    attached_vpc_id;
    availability_zone;
    id;
    state;
    tags;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  amazon_side_asn : string prop;
  arn : string prop;
  attached_vpc_id : string prop;
  availability_zone : string prop;
  id : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

let make ?amazon_side_asn ?attached_vpc_id ?availability_zone ?id
    ?state ?tags ?timeouts ~filter __id =
  let __type = "aws_vpn_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       amazon_side_asn = Prop.computed __type __id "amazon_side_asn";
       arn = Prop.computed __type __id "arn";
       attached_vpc_id = Prop.computed __type __id "attached_vpc_id";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       id = Prop.computed __type __id "id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpn_gateway
        (aws_vpn_gateway ?amazon_side_asn ?attached_vpc_id
           ?availability_zone ?id ?state ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?amazon_side_asn ?attached_vpc_id
    ?availability_zone ?id ?state ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?amazon_side_asn ?attached_vpc_id ?availability_zone ?id
      ?state ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
