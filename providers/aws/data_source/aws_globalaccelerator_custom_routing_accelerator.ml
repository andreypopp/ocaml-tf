(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attributes = {
  flow_logs_enabled : bool prop;
  flow_logs_s3_bucket : string prop;
  flow_logs_s3_prefix : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes) -> ()

let yojson_of_attributes =
  (function
   | {
       flow_logs_enabled = v_flow_logs_enabled;
       flow_logs_s3_bucket = v_flow_logs_s3_bucket;
       flow_logs_s3_prefix = v_flow_logs_s3_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_flow_logs_s3_prefix
         in
         ("flow_logs_s3_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_flow_logs_s3_bucket
         in
         ("flow_logs_s3_bucket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_flow_logs_enabled
         in
         ("flow_logs_enabled", arg) :: bnds
       in
       `Assoc bnds
    : attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes

[@@@deriving.end]

type ip_sets = {
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_family : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_sets) -> ()

let yojson_of_ip_sets =
  (function
   | { ip_addresses = v_ip_addresses; ip_family = v_ip_family } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_family in
         ("ip_family", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : ip_sets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_sets

[@@@deriving.end]

type aws_globalaccelerator_custom_routing_accelerator = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_globalaccelerator_custom_routing_accelerator) -> ()

let yojson_of_aws_globalaccelerator_custom_routing_accelerator =
  (function
   | { arn = v_arn; id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_globalaccelerator_custom_routing_accelerator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_globalaccelerator_custom_routing_accelerator

[@@@deriving.end]

let aws_globalaccelerator_custom_routing_accelerator ?arn ?id ?name
    ?tags () : aws_globalaccelerator_custom_routing_accelerator =
  { arn; id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  attributes : attributes list prop;
  dns_name : string prop;
  enabled : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  ip_address_type : string prop;
  ip_sets : ip_sets list prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?arn ?id ?name ?tags __id =
  let __type = "aws_globalaccelerator_custom_routing_accelerator" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       attributes = Prop.computed __type __id "attributes";
       dns_name = Prop.computed __type __id "dns_name";
       enabled = Prop.computed __type __id "enabled";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       ip_sets = Prop.computed __type __id "ip_sets";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_custom_routing_accelerator
        (aws_globalaccelerator_custom_routing_accelerator ?arn ?id
           ?name ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?tags __id =
  let (r : _ Tf_core.resource) = make ?arn ?id ?name ?tags __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
