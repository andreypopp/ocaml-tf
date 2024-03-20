(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_organizational_unit = {
  id : string prop option; [@option]
  name : string prop;
  parent_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_organizational_unit) -> ()

let yojson_of_aws_organizations_organizational_unit =
  (function
   | { id = v_id; name = v_name; parent_id = v_parent_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent_id in
         ("parent_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_organizations_organizational_unit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_organizational_unit

[@@@deriving.end]

let aws_organizations_organizational_unit ?id ~name ~parent_id () :
    aws_organizations_organizational_unit =
  { id; name; parent_id }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  parent_id : string prop;
}

let make ?id ~name ~parent_id __id =
  let __type = "aws_organizations_organizational_unit" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent_id = Prop.computed __type __id "parent_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_organizational_unit
        (aws_organizations_organizational_unit ?id ~name ~parent_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~parent_id __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~parent_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
