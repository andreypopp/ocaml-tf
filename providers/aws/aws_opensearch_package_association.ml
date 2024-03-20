(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_opensearch_package_association = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  package_id : string prop;  (** package_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_package_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_opensearch_package_association ?id ?timeouts ~domain_name
    ~package_id () : aws_opensearch_package_association =
  { domain_name; id; package_id; timeouts }

type t = {
  domain_name : string prop;
  id : string prop;
  package_id : string prop;
  reference_path : string prop;
}

let make ?id ?timeouts ~domain_name ~package_id __id =
  let __type = "aws_opensearch_package_association" in
  let __attrs =
    ({
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       package_id = Prop.computed __type __id "package_id";
       reference_path = Prop.computed __type __id "reference_path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_package_association
        (aws_opensearch_package_association ?id ?timeouts
           ~domain_name ~package_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_name ~package_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_name ~package_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
