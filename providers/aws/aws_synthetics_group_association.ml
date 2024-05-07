(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_synthetics_group_association = {
  canary_arn : string prop;
  group_name : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_synthetics_group_association) -> ()

let yojson_of_aws_synthetics_group_association =
  (function
   | {
       canary_arn = v_canary_arn;
       group_name = v_group_name;
       id = v_id;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_canary_arn in
         ("canary_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_synthetics_group_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_synthetics_group_association

[@@@deriving.end]

let aws_synthetics_group_association ?id ~canary_arn ~group_name () :
    aws_synthetics_group_association =
  { canary_arn; group_name; id }

type t = {
  tf_name : string;
  canary_arn : string prop;
  group_arn : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
}

let make ?id ~canary_arn ~group_name __id =
  let __type = "aws_synthetics_group_association" in
  let __attrs =
    ({
       tf_name = __id;
       canary_arn = Prop.computed __type __id "canary_arn";
       group_arn = Prop.computed __type __id "group_arn";
       group_id = Prop.computed __type __id "group_id";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_synthetics_group_association
        (aws_synthetics_group_association ?id ~canary_arn ~group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~canary_arn ~group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~canary_arn ~group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
