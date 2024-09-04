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

type aws_vpc_ipam_pool = {
  allocation_resource_tags : string prop Tf_core.assoc option;
      [@option]
  id : string prop option; [@option]
  ipam_pool_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam_pool) -> ()

let yojson_of_aws_vpc_ipam_pool =
  (function
   | {
       allocation_resource_tags = v_allocation_resource_tags;
       id = v_id;
       ipam_pool_id = v_ipam_pool_id;
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
         match v_ipam_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipam_pool_id", arg in
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
         match v_allocation_resource_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "allocation_resource_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_ipam_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam_pool

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_vpc_ipam_pool ?allocation_resource_tags ?id ?ipam_pool_id
    ?tags ?timeouts ~filter () : aws_vpc_ipam_pool =
  {
    allocation_resource_tags;
    id;
    ipam_pool_id;
    tags;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  address_family : string prop;
  allocation_default_netmask_length : float prop;
  allocation_max_netmask_length : float prop;
  allocation_min_netmask_length : float prop;
  allocation_resource_tags : string Tf_core.assoc prop;
  arn : string prop;
  auto_import : bool prop;
  aws_service : string prop;
  description : string prop;
  id : string prop;
  ipam_pool_id : string prop;
  ipam_scope_id : string prop;
  ipam_scope_type : string prop;
  locale : string prop;
  pool_depth : float prop;
  publicly_advertisable : bool prop;
  source_ipam_pool_id : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?allocation_resource_tags ?id ?ipam_pool_id ?tags ?timeouts
    ~filter __id =
  let __type = "aws_vpc_ipam_pool" in
  let __attrs =
    ({
       tf_name = __id;
       address_family = Prop.computed __type __id "address_family";
       allocation_default_netmask_length =
         Prop.computed __type __id
           "allocation_default_netmask_length";
       allocation_max_netmask_length =
         Prop.computed __type __id "allocation_max_netmask_length";
       allocation_min_netmask_length =
         Prop.computed __type __id "allocation_min_netmask_length";
       allocation_resource_tags =
         Prop.computed __type __id "allocation_resource_tags";
       arn = Prop.computed __type __id "arn";
       auto_import = Prop.computed __type __id "auto_import";
       aws_service = Prop.computed __type __id "aws_service";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ipam_pool_id = Prop.computed __type __id "ipam_pool_id";
       ipam_scope_id = Prop.computed __type __id "ipam_scope_id";
       ipam_scope_type = Prop.computed __type __id "ipam_scope_type";
       locale = Prop.computed __type __id "locale";
       pool_depth = Prop.computed __type __id "pool_depth";
       publicly_advertisable =
         Prop.computed __type __id "publicly_advertisable";
       source_ipam_pool_id =
         Prop.computed __type __id "source_ipam_pool_id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_pool
        (aws_vpc_ipam_pool ?allocation_resource_tags ?id
           ?ipam_pool_id ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_resource_tags ?id ?ipam_pool_id
    ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_resource_tags ?id ?ipam_pool_id ?tags ?timeouts
      ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
