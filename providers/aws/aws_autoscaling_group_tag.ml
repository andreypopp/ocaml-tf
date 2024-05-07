(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tag = {
  key : string prop;
  propagate_at_launch : bool prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tag) -> ()

let yojson_of_tag =
  (function
   | {
       key = v_key;
       propagate_at_launch = v_propagate_at_launch;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_propagate_at_launch
         in
         ("propagate_at_launch", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tag

[@@@deriving.end]

type aws_autoscaling_group_tag = {
  autoscaling_group_name : string prop;
  id : string prop option; [@option]
  tag : tag list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_group_tag) -> ()

let yojson_of_aws_autoscaling_group_tag =
  (function
   | {
       autoscaling_group_name = v_autoscaling_group_name;
       id = v_id;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_tag v_tag in
         ("tag", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_autoscaling_group_name
         in
         ("autoscaling_group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_autoscaling_group_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_group_tag

[@@@deriving.end]

let tag ~key ~propagate_at_launch ~value () : tag =
  { key; propagate_at_launch; value }

let aws_autoscaling_group_tag ?id ~autoscaling_group_name ~tag () :
    aws_autoscaling_group_tag =
  { autoscaling_group_name; id; tag }

type t = {
  tf_name : string;
  autoscaling_group_name : string prop;
  id : string prop;
}

let make ?id ~autoscaling_group_name ~tag __id =
  let __type = "aws_autoscaling_group_tag" in
  let __attrs =
    ({
       tf_name = __id;
       autoscaling_group_name =
         Prop.computed __type __id "autoscaling_group_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_group_tag
        (aws_autoscaling_group_tag ?id ~autoscaling_group_name ~tag
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~autoscaling_group_name ~tag __id =
  let (r : _ Tf_core.resource) =
    make ?id ~autoscaling_group_name ~tag __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
