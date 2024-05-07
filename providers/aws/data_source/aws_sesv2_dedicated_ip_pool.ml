(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dedicated_ips = {
  ip : string prop;
  warmup_percentage : float prop;
  warmup_status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dedicated_ips) -> ()

let yojson_of_dedicated_ips =
  (function
   | {
       ip = v_ip;
       warmup_percentage = v_warmup_percentage;
       warmup_status = v_warmup_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_warmup_status in
         ("warmup_status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_warmup_percentage
         in
         ("warmup_percentage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       `Assoc bnds
    : dedicated_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dedicated_ips

[@@@deriving.end]

type aws_sesv2_dedicated_ip_pool = {
  id : string prop option; [@option]
  pool_name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_dedicated_ip_pool) -> ()

let yojson_of_aws_sesv2_dedicated_ip_pool =
  (function
   | { id = v_id; pool_name = v_pool_name; tags = v_tags } ->
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
         let arg = yojson_of_prop yojson_of_string v_pool_name in
         ("pool_name", arg) :: bnds
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
    : aws_sesv2_dedicated_ip_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_dedicated_ip_pool

[@@@deriving.end]

let aws_sesv2_dedicated_ip_pool ?id ?tags ~pool_name () :
    aws_sesv2_dedicated_ip_pool =
  { id; pool_name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  dedicated_ips : dedicated_ips list prop;
  id : string prop;
  pool_name : string prop;
  scaling_mode : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~pool_name __id =
  let __type = "aws_sesv2_dedicated_ip_pool" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       dedicated_ips = Prop.computed __type __id "dedicated_ips";
       id = Prop.computed __type __id "id";
       pool_name = Prop.computed __type __id "pool_name";
       scaling_mode = Prop.computed __type __id "scaling_mode";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_dedicated_ip_pool
        (aws_sesv2_dedicated_ip_pool ?id ?tags ~pool_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~pool_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~pool_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
