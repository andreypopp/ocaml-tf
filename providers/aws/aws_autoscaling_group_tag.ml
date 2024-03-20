(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tag = {
  key : string prop;  (** key *)
  propagate_at_launch : bool prop;  (** propagate_at_launch *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** tag *)

type aws_autoscaling_group_tag = {
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  id : string prop option; [@option]  (** id *)
  tag : tag list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group_tag *)

let tag ~key ~propagate_at_launch ~value () : tag =
  { key; propagate_at_launch; value }

let aws_autoscaling_group_tag ?id ~autoscaling_group_name ~tag () :
    aws_autoscaling_group_tag =
  { autoscaling_group_name; id; tag }

type t = { autoscaling_group_name : string prop; id : string prop }

let make ?id ~autoscaling_group_name ~tag __id =
  let __type = "aws_autoscaling_group_tag" in
  let __attrs =
    ({
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
