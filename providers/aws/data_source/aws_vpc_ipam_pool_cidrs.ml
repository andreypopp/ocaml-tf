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

type ipam_pool_cidrs = { cidr : string prop; state : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ipam_pool_cidrs) -> ()

let yojson_of_ipam_pool_cidrs =
  (function
   | { cidr = v_cidr; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : ipam_pool_cidrs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipam_pool_cidrs

[@@@deriving.end]

type aws_vpc_ipam_pool_cidrs = {
  id : string prop option; [@option]
  ipam_pool_id : string prop;
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam_pool_cidrs) -> ()

let yojson_of_aws_vpc_ipam_pool_cidrs =
  (function
   | {
       id = v_id;
       ipam_pool_id = v_ipam_pool_id;
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
         let arg = yojson_of_prop yojson_of_string v_ipam_pool_id in
         ("ipam_pool_id", arg) :: bnds
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
    : aws_vpc_ipam_pool_cidrs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam_pool_cidrs

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_vpc_ipam_pool_cidrs ?id ?timeouts ~ipam_pool_id ~filter () :
    aws_vpc_ipam_pool_cidrs =
  { id; ipam_pool_id; filter; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  ipam_pool_cidrs : ipam_pool_cidrs list prop;
  ipam_pool_id : string prop;
}

let make ?id ?timeouts ~ipam_pool_id ~filter __id =
  let __type = "aws_vpc_ipam_pool_cidrs" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ipam_pool_cidrs = Prop.computed __type __id "ipam_pool_cidrs";
       ipam_pool_id = Prop.computed __type __id "ipam_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_pool_cidrs
        (aws_vpc_ipam_pool_cidrs ?id ?timeouts ~ipam_pool_id ~filter
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~ipam_pool_id ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~ipam_pool_id ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
