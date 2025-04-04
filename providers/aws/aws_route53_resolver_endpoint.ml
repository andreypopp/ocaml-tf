(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_address = {
  ip : string prop option; [@option]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_address) -> ()

let yojson_of_ip_address =
  (function
   | { ip = v_ip; subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ip_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_address

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_route53_resolver_endpoint = {
  direction : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  protocols : string prop list option; [@option]
  resolver_endpoint_type : string prop option; [@option]
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  ip_address : ip_address list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_endpoint) -> ()

let yojson_of_aws_route53_resolver_endpoint =
  (function
   | {
       direction = v_direction;
       id = v_id;
       name = v_name;
       protocols = v_protocols;
       resolver_endpoint_type = v_resolver_endpoint_type;
       security_group_ids = v_security_group_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       ip_address = v_ip_address;
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
         if Stdlib.( = ) [] v_ip_address then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ip_address) v_ip_address
           in
           let bnd = "ip_address", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
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
         if Stdlib.( = ) [] v_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_ids
           in
           let bnd = "security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resolver_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolver_endpoint_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "protocols", arg in
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
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_endpoint

[@@@deriving.end]

let ip_address ?ip ~subnet_id () : ip_address = { ip; subnet_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route53_resolver_endpoint ?id ?name ?protocols
    ?resolver_endpoint_type ?tags ?tags_all ?timeouts ~direction
    ~security_group_ids ~ip_address () :
    aws_route53_resolver_endpoint =
  {
    direction;
    id;
    name;
    protocols;
    resolver_endpoint_type;
    security_group_ids;
    tags;
    tags_all;
    ip_address;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  direction : string prop;
  host_vpc_id : string prop;
  id : string prop;
  name : string prop;
  protocols : string list prop;
  resolver_endpoint_type : string prop;
  security_group_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?name ?protocols ?resolver_endpoint_type ?tags ?tags_all
    ?timeouts ~direction ~security_group_ids ~ip_address __id =
  let __type = "aws_route53_resolver_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       direction = Prop.computed __type __id "direction";
       host_vpc_id = Prop.computed __type __id "host_vpc_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       protocols = Prop.computed __type __id "protocols";
       resolver_endpoint_type =
         Prop.computed __type __id "resolver_endpoint_type";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_endpoint
        (aws_route53_resolver_endpoint ?id ?name ?protocols
           ?resolver_endpoint_type ?tags ?tags_all ?timeouts
           ~direction ~security_group_ids ~ip_address ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?protocols ?resolver_endpoint_type
    ?tags ?tags_all ?timeouts ~direction ~security_group_ids
    ~ip_address __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?protocols ?resolver_endpoint_type ?tags ?tags_all
      ?timeouts ~direction ~security_group_ids ~ip_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
