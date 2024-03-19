(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~autoscaling_group_name ~tag
    __resource_id =
  let __resource_type = "aws_autoscaling_group_tag" in
  let __resource =
    aws_autoscaling_group_tag ?id ~autoscaling_group_name ~tag ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_group_tag __resource);
  let __resource_attributes =
    ({
       autoscaling_group_name =
         Prop.computed __resource_type __resource_id
           "autoscaling_group_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
