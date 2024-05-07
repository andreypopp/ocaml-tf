(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_ec2_transit_gateway_multicast_domain = {
  auto_accept_shared_associations : string prop option; [@option]
  id : string prop option; [@option]
  igmpv2_support : string prop option; [@option]
  static_sources_support : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  transit_gateway_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_multicast_domain) -> ()

let yojson_of_aws_ec2_transit_gateway_multicast_domain =
  (function
   | {
       auto_accept_shared_associations =
         v_auto_accept_shared_associations;
       id = v_id;
       igmpv2_support = v_igmpv2_support;
       static_sources_support = v_static_sources_support;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_gateway_id = v_transit_gateway_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         match v_static_sources_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "static_sources_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_igmpv2_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "igmpv2_support", arg in
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
         match v_auto_accept_shared_associations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_accept_shared_associations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_multicast_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_multicast_domain

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_transit_gateway_multicast_domain
    ?auto_accept_shared_associations ?id ?igmpv2_support
    ?static_sources_support ?tags ?tags_all ?timeouts
    ~transit_gateway_id () : aws_ec2_transit_gateway_multicast_domain
    =
  {
    auto_accept_shared_associations;
    id;
    igmpv2_support;
    static_sources_support;
    tags;
    tags_all;
    transit_gateway_id;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_accept_shared_associations : string prop;
  id : string prop;
  igmpv2_support : string prop;
  owner_id : string prop;
  static_sources_support : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

let make ?auto_accept_shared_associations ?id ?igmpv2_support
    ?static_sources_support ?tags ?tags_all ?timeouts
    ~transit_gateway_id __id =
  let __type = "aws_ec2_transit_gateway_multicast_domain" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_accept_shared_associations =
         Prop.computed __type __id "auto_accept_shared_associations";
       id = Prop.computed __type __id "id";
       igmpv2_support = Prop.computed __type __id "igmpv2_support";
       owner_id = Prop.computed __type __id "owner_id";
       static_sources_support =
         Prop.computed __type __id "static_sources_support";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_multicast_domain
        (aws_ec2_transit_gateway_multicast_domain
           ?auto_accept_shared_associations ?id ?igmpv2_support
           ?static_sources_support ?tags ?tags_all ?timeouts
           ~transit_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_accept_shared_associations ?id
    ?igmpv2_support ?static_sources_support ?tags ?tags_all ?timeouts
    ~transit_gateway_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_accept_shared_associations ?id ?igmpv2_support
      ?static_sources_support ?tags ?tags_all ?timeouts
      ~transit_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
