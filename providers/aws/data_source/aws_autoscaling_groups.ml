(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_autoscaling_groups = {
  id : string prop option; [@option]
  names : string prop list option; [@option]
  filter : filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_groups) -> ()

let yojson_of_aws_autoscaling_groups =
  (function
   | { id = v_id; names = v_names; filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "names", arg in
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
    : aws_autoscaling_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_groups

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_autoscaling_groups ?id ?names ~filter () :
    aws_autoscaling_groups =
  { id; names; filter }

type t = {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  names : string list prop;
}

let make ?id ?names ~filter __id =
  let __type = "aws_autoscaling_groups" in
  let __attrs =
    ({
       tf_name = __id;
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_groups
        (aws_autoscaling_groups ?id ?names ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?names ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ?names ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
