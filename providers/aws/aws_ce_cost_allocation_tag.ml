(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ce_cost_allocation_tag = {
  id : string prop option; [@option]  (** id *)
  status : string prop;  (** status *)
  tag_key : string prop;  (** tag_key *)
}
[@@deriving yojson_of]
(** aws_ce_cost_allocation_tag *)

let aws_ce_cost_allocation_tag ?id ~status ~tag_key () :
    aws_ce_cost_allocation_tag =
  { id; status; tag_key }

type t = {
  id : string prop;
  status : string prop;
  tag_key : string prop;
  type_ : string prop;
}

let make ?id ~status ~tag_key __id =
  let __type = "aws_ce_cost_allocation_tag" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
       tag_key = Prop.computed __type __id "tag_key";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ce_cost_allocation_tag
        (aws_ce_cost_allocation_tag ?id ~status ~tag_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~status ~tag_key __id =
  let (r : _ Tf_core.resource) = make ?id ~status ~tag_key __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
