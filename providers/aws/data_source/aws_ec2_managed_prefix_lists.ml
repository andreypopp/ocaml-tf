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

type aws_ec2_managed_prefix_lists = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_managed_prefix_lists) -> ()

let yojson_of_aws_ec2_managed_prefix_lists =
  (function
   | { id = v_id; tags = v_tags; filter = v_filter } ->
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
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
    : aws_ec2_managed_prefix_lists ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_managed_prefix_lists

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_ec2_managed_prefix_lists ?id ?tags ~filter () :
    aws_ec2_managed_prefix_lists =
  { id; tags; filter }

type t = {
  tf_name : string;
  id : string prop;
  ids : string list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~filter __id =
  let __type = "aws_ec2_managed_prefix_lists" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_managed_prefix_lists
        (aws_ec2_managed_prefix_lists ?id ?tags ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
