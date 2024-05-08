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

type aws_vpc_endpoint_service = {
  id : string prop option; [@option]
  service : string prop option; [@option]
  service_name : string prop option; [@option]
  service_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint_service) -> ()

let yojson_of_aws_vpc_endpoint_service =
  (function
   | {
       id = v_id;
       service = v_service;
       service_name = v_service_name;
       service_type = v_service_type;
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
         match v_service_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
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
    : aws_vpc_endpoint_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_service

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_vpc_endpoint_service ?id ?service ?service_name ?service_type
    ?tags ?timeouts ~filter () : aws_vpc_endpoint_service =
  { id; service; service_name; service_type; tags; filter; timeouts }

type t = {
  tf_name : string;
  acceptance_required : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  base_endpoint_dns_names : string list prop;
  id : string prop;
  manages_vpc_endpoints : bool prop;
  owner : string prop;
  private_dns_name : string prop;
  service : string prop;
  service_id : string prop;
  service_name : string prop;
  service_type : string prop;
  supported_ip_address_types : string list prop;
  tags : (string * string) list prop;
  vpc_endpoint_policy_supported : bool prop;
}

let make ?id ?service ?service_name ?service_type ?tags ?timeouts
    ~filter __id =
  let __type = "aws_vpc_endpoint_service" in
  let __attrs =
    ({
       tf_name = __id;
       acceptance_required =
         Prop.computed __type __id "acceptance_required";
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       base_endpoint_dns_names =
         Prop.computed __type __id "base_endpoint_dns_names";
       id = Prop.computed __type __id "id";
       manages_vpc_endpoints =
         Prop.computed __type __id "manages_vpc_endpoints";
       owner = Prop.computed __type __id "owner";
       private_dns_name =
         Prop.computed __type __id "private_dns_name";
       service = Prop.computed __type __id "service";
       service_id = Prop.computed __type __id "service_id";
       service_name = Prop.computed __type __id "service_name";
       service_type = Prop.computed __type __id "service_type";
       supported_ip_address_types =
         Prop.computed __type __id "supported_ip_address_types";
       tags = Prop.computed __type __id "tags";
       vpc_endpoint_policy_supported =
         Prop.computed __type __id "vpc_endpoint_policy_supported";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_service
        (aws_vpc_endpoint_service ?id ?service ?service_name
           ?service_type ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?service ?service_name ?service_type
    ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?service ?service_name ?service_type ?tags ?timeouts
      ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
