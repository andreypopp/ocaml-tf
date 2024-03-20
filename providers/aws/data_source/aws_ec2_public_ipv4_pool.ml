(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pool_address_ranges = {
  address_count : float prop;
  available_address_count : float prop;
  first_address : string prop;
  last_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pool_address_ranges) -> ()

let yojson_of_pool_address_ranges =
  (function
   | {
       address_count = v_address_count;
       available_address_count = v_available_address_count;
       first_address = v_first_address;
       last_address = v_last_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_address in
         ("last_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_address in
         ("first_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_available_address_count
         in
         ("available_address_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_address_count in
         ("address_count", arg) :: bnds
       in
       `Assoc bnds
    : pool_address_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pool_address_ranges

[@@@deriving.end]

type aws_ec2_public_ipv4_pool = {
  id : string prop option; [@option]
  pool_id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_public_ipv4_pool) -> ()

let yojson_of_aws_ec2_public_ipv4_pool =
  (function
   | { id = v_id; pool_id = v_pool_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_pool_id in
         ("pool_id", arg) :: bnds
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
    : aws_ec2_public_ipv4_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_public_ipv4_pool

[@@@deriving.end]

let aws_ec2_public_ipv4_pool ?id ?tags ~pool_id () :
    aws_ec2_public_ipv4_pool =
  { id; pool_id; tags }

type t = {
  description : string prop;
  id : string prop;
  network_border_group : string prop;
  pool_address_ranges : pool_address_ranges list prop;
  pool_id : string prop;
  tags : (string * string) list prop;
  total_address_count : float prop;
  total_available_address_count : float prop;
}

let make ?id ?tags ~pool_id __id =
  let __type = "aws_ec2_public_ipv4_pool" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       network_border_group =
         Prop.computed __type __id "network_border_group";
       pool_address_ranges =
         Prop.computed __type __id "pool_address_ranges";
       pool_id = Prop.computed __type __id "pool_id";
       tags = Prop.computed __type __id "tags";
       total_address_count =
         Prop.computed __type __id "total_address_count";
       total_available_address_count =
         Prop.computed __type __id "total_available_address_count";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_public_ipv4_pool
        (aws_ec2_public_ipv4_pool ?id ?tags ~pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~pool_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~pool_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
