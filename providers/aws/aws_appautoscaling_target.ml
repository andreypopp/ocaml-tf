(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appautoscaling_target = {
  id : string prop option; [@option]  (** id *)
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
  resource_id : string prop;  (** resource_id *)
  role_arn : string prop option; [@option]  (** role_arn *)
  scalable_dimension : string prop;  (** scalable_dimension *)
  service_namespace : string prop;  (** service_namespace *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_appautoscaling_target *)

type t = {
  arn : string prop;
  id : string prop;
  max_capacity : float prop;
  min_capacity : float prop;
  resource_id : string prop;
  role_arn : string prop;
  scalable_dimension : string prop;
  service_namespace : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_appautoscaling_target ?id ?role_arn ?tags ?tags_all
    ~max_capacity ~min_capacity ~resource_id ~scalable_dimension
    ~service_namespace __resource_id =
  let __resource_type = "aws_appautoscaling_target" in
  let __resource =
    ({
       id;
       max_capacity;
       min_capacity;
       resource_id;
       role_arn;
       scalable_dimension;
       service_namespace;
       tags;
       tags_all;
     }
      : aws_appautoscaling_target)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appautoscaling_target __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       max_capacity =
         Prop.computed __resource_type __resource_id "max_capacity";
       min_capacity =
         Prop.computed __resource_type __resource_id "min_capacity";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       scalable_dimension =
         Prop.computed __resource_type __resource_id
           "scalable_dimension";
       service_namespace =
         Prop.computed __resource_type __resource_id
           "service_namespace";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
