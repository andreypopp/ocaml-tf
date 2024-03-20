(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_ipam_preview_next_cidr = {
  disallowed_cidrs : string prop list option; [@option]
  id : string prop option; [@option]
  ipam_pool_id : string prop;
  netmask_length : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam_preview_next_cidr) -> ()

let yojson_of_aws_vpc_ipam_preview_next_cidr =
  (function
   | {
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
       `Assoc bnds
    : aws_vpc_ipam_preview_next_cidr ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam_preview_next_cidr

[@@@deriving.end]

let aws_vpc_ipam_preview_next_cidr ?disallowed_cidrs ?id
    ?netmask_length ~ipam_pool_id () : aws_vpc_ipam_preview_next_cidr
    =
  { disallowed_cidrs; id; ipam_pool_id; netmask_length }

type t = {
  cidr : string prop;
  disallowed_cidrs : string list prop;
  id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
}

let make ?disallowed_cidrs ?id ?netmask_length ~ipam_pool_id __id =
  let __type = "aws_vpc_ipam_preview_next_cidr" in
  let __attrs =
    ({
       cidr = Prop.computed __type __id "cidr";
       disallowed_cidrs =
         Prop.computed __type __id "disallowed_cidrs";
       id = Prop.computed __type __id "id";
       ipam_pool_id = Prop.computed __type __id "ipam_pool_id";
       netmask_length = Prop.computed __type __id "netmask_length";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_preview_next_cidr
        (aws_vpc_ipam_preview_next_cidr ?disallowed_cidrs ?id
           ?netmask_length ~ipam_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?disallowed_cidrs ?id ?netmask_length
    ~ipam_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?disallowed_cidrs ?id ?netmask_length ~ipam_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
