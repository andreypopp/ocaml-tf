(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_ipam_pool_cidr_allocation = {
  cidr : string prop option; [@option]
  description : string prop option; [@option]
  disallowed_cidrs : string prop list option; [@option]
  id : string prop option; [@option]
  ipam_pool_id : string prop;
  netmask_length : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam_pool_cidr_allocation) -> ()

let yojson_of_aws_vpc_ipam_pool_cidr_allocation =
  (function
   | {
       cidr = v_cidr;
       description = v_description;
       disallowed_cidrs = v_disallowed_cidrs;
       id = v_id;
       ipam_pool_id = v_ipam_pool_id;
       netmask_length = v_netmask_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_netmask_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "netmask_length", arg in
             bnd :: bnds
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
       let bnds =
         match v_disallowed_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disallowed_cidrs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_ipam_pool_cidr_allocation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam_pool_cidr_allocation

[@@@deriving.end]

let aws_vpc_ipam_pool_cidr_allocation ?cidr ?description
    ?disallowed_cidrs ?id ?netmask_length ~ipam_pool_id () :
    aws_vpc_ipam_pool_cidr_allocation =
  {
    cidr;
    description;
    disallowed_cidrs;
    id;
    ipam_pool_id;
    netmask_length;
  }

type t = {
  tf_name : string;
  cidr : string prop;
  description : string prop;
  disallowed_cidrs : string list prop;
  id : string prop;
  ipam_pool_allocation_id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
  resource_id : string prop;
  resource_owner : string prop;
  resource_type : string prop;
}

let make ?cidr ?description ?disallowed_cidrs ?id ?netmask_length
    ~ipam_pool_id __id =
  let __type = "aws_vpc_ipam_pool_cidr_allocation" in
  let __attrs =
    ({
       tf_name = __id;
       cidr = Prop.computed __type __id "cidr";
       description = Prop.computed __type __id "description";
       disallowed_cidrs =
         Prop.computed __type __id "disallowed_cidrs";
       id = Prop.computed __type __id "id";
       ipam_pool_allocation_id =
         Prop.computed __type __id "ipam_pool_allocation_id";
       ipam_pool_id = Prop.computed __type __id "ipam_pool_id";
       netmask_length = Prop.computed __type __id "netmask_length";
       resource_id = Prop.computed __type __id "resource_id";
       resource_owner = Prop.computed __type __id "resource_owner";
       resource_type = Prop.computed __type __id "resource_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_pool_cidr_allocation
        (aws_vpc_ipam_pool_cidr_allocation ?cidr ?description
           ?disallowed_cidrs ?id ?netmask_length ~ipam_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr ?description ?disallowed_cidrs ?id
    ?netmask_length ~ipam_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?cidr ?description ?disallowed_cidrs ?id ?netmask_length
      ~ipam_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
