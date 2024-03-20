(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_options = {
  dns_record_ip_type : string prop option; [@option]
      (** dns_record_ip_type *)
  private_dns_only_for_inbound_resolver_endpoint : bool prop option;
      [@option]
      (** private_dns_only_for_inbound_resolver_endpoint *)
}
[@@deriving yojson_of]
(** dns_options *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type dns_entry = {
  dns_name : string prop;  (** dns_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpc_endpoint = {
  auto_accept : bool prop option; [@option]  (** auto_accept *)
  id : string prop option; [@option]  (** id *)
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  policy : string prop option; [@option]  (** policy *)
  private_dns_enabled : bool prop option; [@option]
      (** private_dns_enabled *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  service_name : string prop;  (** service_name *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_endpoint_type : string prop option; [@option]
      (** vpc_endpoint_type *)
  vpc_id : string prop;  (** vpc_id *)
  dns_options : dns_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint *)

let dns_options ?dns_record_ip_type
    ?private_dns_only_for_inbound_resolver_endpoint () : dns_options
    =
  {
    dns_record_ip_type;
    private_dns_only_for_inbound_resolver_endpoint;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_endpoint ?auto_accept ?id ?ip_address_type ?policy
    ?private_dns_enabled ?route_table_ids ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
    ~service_name ~vpc_id ~dns_options () : aws_vpc_endpoint =
  {
    auto_accept;
    id;
    ip_address_type;
    policy;
    private_dns_enabled;
    route_table_ids;
    security_group_ids;
    service_name;
    subnet_ids;
    tags;
    tags_all;
    vpc_endpoint_type;
    vpc_id;
    dns_options;
    timeouts;
  }

type t = {
  arn : string prop;
  auto_accept : bool prop;
  cidr_blocks : string list prop;
  dns_entry : dns_entry list prop;
  id : string prop;
  ip_address_type : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  policy : string prop;
  prefix_list_id : string prop;
  private_dns_enabled : bool prop;
  requester_managed : bool prop;
  route_table_ids : string list prop;
  security_group_ids : string list prop;
  service_name : string prop;
  state : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_endpoint_type : string prop;
  vpc_id : string prop;
}

let make ?auto_accept ?id ?ip_address_type ?policy
    ?private_dns_enabled ?route_table_ids ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
    ~service_name ~vpc_id ~dns_options __id =
  let __type = "aws_vpc_endpoint" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_accept = Prop.computed __type __id "auto_accept";
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       dns_entry = Prop.computed __type __id "dns_entry";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       policy = Prop.computed __type __id "policy";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
       private_dns_enabled =
         Prop.computed __type __id "private_dns_enabled";
       requester_managed =
         Prop.computed __type __id "requester_managed";
       route_table_ids = Prop.computed __type __id "route_table_ids";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       service_name = Prop.computed __type __id "service_name";
       state = Prop.computed __type __id "state";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_endpoint_type =
         Prop.computed __type __id "vpc_endpoint_type";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint
        (aws_vpc_endpoint ?auto_accept ?id ?ip_address_type ?policy
           ?private_dns_enabled ?route_table_ids ?security_group_ids
           ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
           ~service_name ~vpc_id ~dns_options ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_accept ?id ?ip_address_type ?policy
    ?private_dns_enabled ?route_table_ids ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
    ~service_name ~vpc_id ~dns_options __id =
  let (r : _ Tf_core.resource) =
    make ?auto_accept ?id ?ip_address_type ?policy
      ?private_dns_enabled ?route_table_ids ?security_group_ids
      ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
      ~service_name ~vpc_id ~dns_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
