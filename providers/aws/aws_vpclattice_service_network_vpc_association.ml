(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpclattice_service_network_vpc_association = {
  id : string prop option; [@option]  (** id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  service_network_identifier : string prop;
      (** service_network_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_identifier : string prop;  (** vpc_identifier *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_vpc_association *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_service_network_vpc_association ?id
    ?security_group_ids ?tags ?tags_all ?timeouts
    ~service_network_identifier ~vpc_identifier () :
    aws_vpclattice_service_network_vpc_association =
  {
    id;
    security_group_ids;
    service_network_identifier;
    tags;
    tags_all;
    vpc_identifier;
    timeouts;
  }

type t = {
  arn : string prop;
  created_by : string prop;
  id : string prop;
  security_group_ids : string list prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_identifier : string prop;
}

let make ?id ?security_group_ids ?tags ?tags_all ?timeouts
    ~service_network_identifier ~vpc_identifier __id =
  let __type = "aws_vpclattice_service_network_vpc_association" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_by = Prop.computed __type __id "created_by";
       id = Prop.computed __type __id "id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       service_network_identifier =
         Prop.computed __type __id "service_network_identifier";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_identifier = Prop.computed __type __id "vpc_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_service_network_vpc_association
        (aws_vpclattice_service_network_vpc_association ?id
           ?security_group_ids ?tags ?tags_all ?timeouts
           ~service_network_identifier ~vpc_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?security_group_ids ?tags ?tags_all
    ?timeouts ~service_network_identifier ~vpc_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?security_group_ids ?tags ?tags_all ?timeouts
      ~service_network_identifier ~vpc_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
