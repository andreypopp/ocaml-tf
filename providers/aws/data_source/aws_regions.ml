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

type aws_regions = {
  all_regions : bool prop option; [@option]
  id : string prop option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_regions) -> ()

let yojson_of_aws_regions =
  (function
   | { all_regions = v_all_regions; id = v_id; filter = v_filter } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_regions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_regions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_regions

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_regions ?all_regions ?id ~filter () : aws_regions =
  { all_regions; id; filter }

type t = {
  tf_name : string;
  all_regions : bool prop;
  id : string prop;
  names : string list prop;
}

let make ?all_regions ?id ~filter __id =
  let __type = "aws_regions" in
  let __attrs =
    ({
       tf_name = __id;
       all_regions = Prop.computed __type __id "all_regions";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_regions (aws_regions ?all_regions ?id ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?all_regions ?id ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?all_regions ?id ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
