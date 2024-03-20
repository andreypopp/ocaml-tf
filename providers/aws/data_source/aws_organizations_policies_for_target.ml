(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_policies_for_target = {
  filter : string prop;
  id : string prop option; [@option]
  target_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_policies_for_target) -> ()

let yojson_of_aws_organizations_policies_for_target =
  (function
   | { filter = v_filter; id = v_id; target_id = v_target_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_id in
         ("target_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : aws_organizations_policies_for_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_policies_for_target

[@@@deriving.end]

let aws_organizations_policies_for_target ?id ~filter ~target_id () :
    aws_organizations_policies_for_target =
  { filter; id; target_id }

type t = {
  filter : string prop;
  id : string prop;
  ids : string list prop;
  target_id : string prop;
}

let make ?id ~filter ~target_id __id =
  let __type = "aws_organizations_policies_for_target" in
  let __attrs =
    ({
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       target_id = Prop.computed __type __id "target_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_policies_for_target
        (aws_organizations_policies_for_target ?id ~filter ~target_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~filter ~target_id __id =
  let (r : _ Tf_core.resource) = make ?id ~filter ~target_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
