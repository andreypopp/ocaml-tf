(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_policies = {
  filter : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_policies) -> ()

let yojson_of_aws_organizations_policies =
  (function
   | { filter = v_filter; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_organizations_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_policies

[@@@deriving.end]

let aws_organizations_policies ?id ~filter () :
    aws_organizations_policies =
  { filter; id }

type t = {
  filter : string prop;
  id : string prop;
  ids : string list prop;
}

let make ?id ~filter __id =
  let __type = "aws_organizations_policies" in
  let __attrs =
    ({
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_policies
        (aws_organizations_policies ?id ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
