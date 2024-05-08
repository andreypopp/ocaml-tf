(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_imagebuilder_image_recipes = {
  id : string prop option; [@option]
  owner : string prop option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_image_recipes) -> ()

let yojson_of_aws_imagebuilder_image_recipes =
  (function
   | { id = v_id; owner = v_owner; filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
             bnd :: bnds
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
    : aws_imagebuilder_image_recipes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_image_recipes

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_imagebuilder_image_recipes ?id ?owner ~filter () :
    aws_imagebuilder_image_recipes =
  { id; owner; filter }

type t = {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  names : string list prop;
  owner : string prop;
}

let make ?id ?owner ~filter __id =
  let __type = "aws_imagebuilder_image_recipes" in
  let __attrs =
    ({
       tf_name = __id;
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
       owner = Prop.computed __type __id "owner";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_image_recipes
        (aws_imagebuilder_image_recipes ?id ?owner ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?owner ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ?owner ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
