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

type aws_vpclattice_service = {
  auth_type : string prop option; [@option]  (** auth_type *)
  certificate_arn : string prop option; [@option]
      (** certificate_arn *)
  custom_domain_name : string prop option; [@option]
      (** custom_domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_service ?auth_type ?certificate_arn
    ?custom_domain_name ?id ?tags ?tags_all ?timeouts ~name () :
    aws_vpclattice_service =
  {
    auth_type;
    certificate_arn;
    custom_domain_name;
    id;
    name;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  auth_type : string prop;
  certificate_arn : string prop;
  custom_domain_name : string prop;
  dns_entry : dns_entry list prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?auth_type ?certificate_arn ?custom_domain_name ?id ?tags
    ?tags_all ?timeouts ~name __id =
  let __type = "aws_vpclattice_service" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auth_type = Prop.computed __type __id "auth_type";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       custom_domain_name =
         Prop.computed __type __id "custom_domain_name";
       dns_entry = Prop.computed __type __id "dns_entry";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
      yojson_of_aws_vpclattice_service
        (aws_vpclattice_service ?auth_type ?certificate_arn
           ?custom_domain_name ?id ?tags ?tags_all ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?auth_type ?certificate_arn
    ?custom_domain_name ?id ?tags ?tags_all ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?auth_type ?certificate_arn ?custom_domain_name ?id ?tags
      ?tags_all ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
