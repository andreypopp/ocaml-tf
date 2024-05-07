(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ce_cost_allocation_tag = {
  id : string prop option; [@option]
  status : string prop;
  tag_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ce_cost_allocation_tag) -> ()

let yojson_of_aws_ce_cost_allocation_tag =
  (function
   | { id = v_id; status = v_status; tag_key = v_tag_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_key in
         ("tag_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ce_cost_allocation_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ce_cost_allocation_tag

[@@@deriving.end]

let aws_ce_cost_allocation_tag ?id ~status ~tag_key () :
    aws_ce_cost_allocation_tag =
  { id; status; tag_key }

type t = {
  tf_name : string;
  id : string prop;
  status : string prop;
  tag_key : string prop;
  type_ : string prop;
}

let make ?id ~status ~tag_key __id =
  let __type = "aws_ce_cost_allocation_tag" in
  let __attrs =
    ({
       tf_name = __id;
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
