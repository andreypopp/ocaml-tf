(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_transit_gateway_multicast_domain = {
  auto_accept_shared_associations : string prop option; [@option]
      (** auto_accept_shared_associations *)
  id : string prop option; [@option]  (** id *)
  igmpv2_support : string prop option; [@option]
      (** igmpv2_support *)
  static_sources_support : string prop option; [@option]
      (** static_sources_support *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_domain *)

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
