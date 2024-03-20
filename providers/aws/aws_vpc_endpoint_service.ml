(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type private_dns_name_configuration = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type aws_vpc_endpoint_service = {
  acceptance_required : bool prop;  (** acceptance_required *)
  allowed_principals : string prop list option; [@option]
      (** allowed_principals *)
  gateway_load_balancer_arns : string prop list option; [@option]
      (** gateway_load_balancer_arns *)
  id : string prop option; [@option]  (** id *)
  network_load_balancer_arns : string prop list option; [@option]
      (** network_load_balancer_arns *)
  private_dns_name : string prop option; [@option]
      (** private_dns_name *)
  supported_ip_address_types : string prop list option; [@option]
      (** supported_ip_address_types *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_service *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_endpoint_service ?allowed_principals
    ?gateway_load_balancer_arns ?id ?network_load_balancer_arns
    ?private_dns_name ?supported_ip_address_types ?tags ?tags_all
    ?timeouts ~acceptance_required () : aws_vpc_endpoint_service =
  {
    acceptance_required;
    allowed_principals;
    gateway_load_balancer_arns;
    id;
    network_load_balancer_arns;
    private_dns_name;
    supported_ip_address_types;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  acceptance_required : bool prop;
  allowed_principals : string list prop;
  arn : string prop;
  availability_zones : string list prop;
  base_endpoint_dns_names : string list prop;
  gateway_load_balancer_arns : string list prop;
  id : string prop;
  manages_vpc_endpoints : bool prop;
  network_load_balancer_arns : string list prop;
  private_dns_name : string prop;
  private_dns_name_configuration :
    private_dns_name_configuration list prop;
  service_name : string prop;
  service_type : string prop;
  state : string prop;
  supported_ip_address_types : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?allowed_principals ?gateway_load_balancer_arns ?id
    ?network_load_balancer_arns ?private_dns_name
    ?supported_ip_address_types ?tags ?tags_all ?timeouts
    ~acceptance_required __id =
  let __type = "aws_vpc_endpoint_service" in
  let __attrs =
    ({
       acceptance_required =
         Prop.computed __type __id "acceptance_required";
       allowed_principals =
         Prop.computed __type __id "allowed_principals";
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       base_endpoint_dns_names =
         Prop.computed __type __id "base_endpoint_dns_names";
       gateway_load_balancer_arns =
         Prop.computed __type __id "gateway_load_balancer_arns";
       id = Prop.computed __type __id "id";
       manages_vpc_endpoints =
         Prop.computed __type __id "manages_vpc_endpoints";
       network_load_balancer_arns =
         Prop.computed __type __id "network_load_balancer_arns";
       private_dns_name =
         Prop.computed __type __id "private_dns_name";
       private_dns_name_configuration =
         Prop.computed __type __id "private_dns_name_configuration";
       service_name = Prop.computed __type __id "service_name";
       service_type = Prop.computed __type __id "service_type";
       state = Prop.computed __type __id "state";
       supported_ip_address_types =
         Prop.computed __type __id "supported_ip_address_types";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_service
        (aws_vpc_endpoint_service ?allowed_principals
           ?gateway_load_balancer_arns ?id
           ?network_load_balancer_arns ?private_dns_name
           ?supported_ip_address_types ?tags ?tags_all ?timeouts
           ~acceptance_required ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_principals
    ?gateway_load_balancer_arns ?id ?network_load_balancer_arns
    ?private_dns_name ?supported_ip_address_types ?tags ?tags_all
    ?timeouts ~acceptance_required __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_principals ?gateway_load_balancer_arns ?id
      ?network_load_balancer_arns ?private_dns_name
      ?supported_ip_address_types ?tags ?tags_all ?timeouts
      ~acceptance_required __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
