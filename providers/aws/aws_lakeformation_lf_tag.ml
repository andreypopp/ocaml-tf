(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lakeformation_lf_tag = {
  catalog_id : string prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lakeformation_lf_tag) -> ()

let yojson_of_aws_lakeformation_lf_tag =
  (function
   | {
       catalog_id = v_catalog_id;
       id = v_id;
       key = v_key;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lakeformation_lf_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lakeformation_lf_tag

[@@@deriving.end]

let aws_lakeformation_lf_tag ?catalog_id ?id ~key ~values () :
    aws_lakeformation_lf_tag =
  { catalog_id; id; key; values }

type t = {
  tf_name : string;
  catalog_id : string prop;
  id : string prop;
  key : string prop;
  values : string list prop;
}

let make ?catalog_id ?id ~key ~values __id =
  let __type = "aws_lakeformation_lf_tag" in
  let __attrs =
    ({
       tf_name = __id;
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
