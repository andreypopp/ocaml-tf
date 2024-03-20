(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type dns_entry = {
  domain_name : string prop;  (** domain_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpclattice_service_network_service_association = {
  id : string prop option; [@option]  (** id *)
  service_identifier : string prop;  (** service_identifier *)
  service_network_identifier : string prop;
      (** service_network_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_service_association *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_service_network_service_association ?id ?tags
    ?tags_all ?timeouts ~service_identifier
    ~service_network_identifier () :
    aws_vpclattice_service_network_service_association =
  {
    id;
    service_identifier;
    service_network_identifier;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  created_by : string prop;
  custom_domain_name : string prop;
  dns_entry : dns_entry list prop;
  id : string prop;
  service_identifier : string prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~service_identifier
    ~service_network_identifier __id =
  let __type =
    "aws_vpclattice_service_network_service_association"
  in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_by = Prop.computed __type __id "created_by";
       custom_domain_name =
         Prop.computed __type __id "custom_domain_name";
       dns_entry = Prop.computed __type __id "dns_entry";
       id = Prop.computed __type __id "id";
       service_identifier =
         Prop.computed __type __id "service_identifier";
       service_network_identifier =
         Prop.computed __type __id "service_network_identifier";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_service_network_service_association
        (aws_vpclattice_service_network_service_association ?id ?tags
           ?tags_all ?timeouts ~service_identifier
           ~service_network_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~service_identifier ~service_network_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~service_identifier
      ~service_network_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
