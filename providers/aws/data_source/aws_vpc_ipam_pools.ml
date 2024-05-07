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

type ipam_pools = {
  address_family : string prop;
  allocation_default_netmask_length : float prop;
  allocation_max_netmask_length : float prop;
  allocation_min_netmask_length : float prop;
  allocation_resource_tags : (string * string prop) list;
  arn : string prop;
  auto_import : bool prop;
  aws_service : string prop;
  description : string prop;
  id : string prop;
  ipam_scope_id : string prop;
  ipam_scope_type : string prop;
  locale : string prop;
  pool_depth : float prop;
  publicly_advertisable : bool prop;
  source_ipam_pool_id : string prop;
  state : string prop;
  tags : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipam_pools) -> ()

let yojson_of_ipam_pools =
  (function
   | {
       address_family = v_address_family;
       allocation_default_netmask_length =
         v_allocation_default_netmask_length;
       allocation_max_netmask_length =
         v_allocation_max_netmask_length;
       allocation_min_netmask_length =
         v_allocation_min_netmask_length;
       allocation_resource_tags = v_allocation_resource_tags;
       arn = v_arn;
       auto_import = v_auto_import;
       aws_service = v_aws_service;
       description = v_description;
       id = v_id;
       ipam_scope_id = v_ipam_scope_id;
       ipam_scope_type = v_ipam_scope_type;
       locale = v_locale;
       pool_depth = v_pool_depth;
       publicly_advertisable = v_publicly_advertisable;
       source_ipam_pool_id = v_source_ipam_pool_id;
       state = v_state;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_ipam_pool_id
         in
         ("source_ipam_pool_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_publicly_advertisable
         in
         ("publicly_advertisable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_pool_depth in
         ("pool_depth", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_locale in
         ("locale", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipam_scope_type
         in
         ("ipam_scope_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipam_scope_id in
         ("ipam_scope_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aws_service in
         ("aws_service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_import in
         ("auto_import", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_allocation_resource_tags
         in
         ("allocation_resource_tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_allocation_min_netmask_length
         in
         ("allocation_min_netmask_length", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_allocation_max_netmask_length
         in
         ("allocation_max_netmask_length", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_allocation_default_netmask_length
         in
         ("allocation_default_netmask_length", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_family
         in
         ("address_family", arg) :: bnds
       in
       `Assoc bnds
    : ipam_pools -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipam_pools

[@@@deriving.end]

type aws_vpc_ipam_pools = {
  id : string prop option; [@option]
  filter : filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam_pools) -> ()

let yojson_of_aws_vpc_ipam_pools =
  (function
   | { id = v_id; filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
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
    : aws_vpc_ipam_pools -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam_pools

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_vpc_ipam_pools ?id ~filter () : aws_vpc_ipam_pools =
  { id; filter }

type t = {
  tf_name : string;
  id : string prop;
  ipam_pools : ipam_pools list prop;
}

let make ?id ~filter __id =
  let __type = "aws_vpc_ipam_pools" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ipam_pools = Prop.computed __type __id "ipam_pools";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_pools
        (aws_vpc_ipam_pools ?id ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
