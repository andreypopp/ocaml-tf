(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_options = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_options *)

type aws_opensearch_vpc_endpoint = {
  domain_arn : string prop;  (** domain_arn *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
  vpc_options : vpc_options list;
}
[@@deriving yojson_of]
(** aws_opensearch_vpc_endpoint *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_options ?security_group_ids ~subnet_ids () : vpc_options =
  { security_group_ids; subnet_ids }

let aws_opensearch_vpc_endpoint ?id ?timeouts ~domain_arn
    ~vpc_options () : aws_opensearch_vpc_endpoint =
  { domain_arn; id; timeouts; vpc_options }

type t = {
  domain_arn : string prop;
  endpoint : string prop;
  id : string prop;
}

let make ?id ?timeouts ~domain_arn ~vpc_options __id =
  let __type = "aws_opensearch_vpc_endpoint" in
  let __attrs =
    ({
       domain_arn = Prop.computed __type __id "domain_arn";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_vpc_endpoint
        (aws_opensearch_vpc_endpoint ?id ?timeouts ~domain_arn
           ~vpc_options ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_arn ~vpc_options __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_arn ~vpc_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
