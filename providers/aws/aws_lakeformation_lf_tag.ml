(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lakeformation_lf_tag = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lakeformation_lf_tag *)

let aws_lakeformation_lf_tag ?catalog_id ?id ~key ~values () :
    aws_lakeformation_lf_tag =
  { catalog_id; id; key; values }

type t = {
  catalog_id : string prop;
  id : string prop;
  key : string prop;
  values : string list prop;
}

let make ?catalog_id ?id ~key ~values __id =
  let __type = "aws_lakeformation_lf_tag" in
  let __attrs =
    ({
       catalog_id = Prop.computed __type __id "catalog_id";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       values = Prop.computed __type __id "values";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_lf_tag
        (aws_lakeformation_lf_tag ?catalog_id ?id ~key ~values ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id ~key ~values __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?id ~key ~values __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
