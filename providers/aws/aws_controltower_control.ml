(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_controltower_control__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_controltower_control__timeouts *)

type aws_controltower_control = {
  control_identifier : string prop;  (** control_identifier *)
  id : string prop option; [@option]  (** id *)
  target_identifier : string prop;  (** target_identifier *)
  timeouts : aws_controltower_control__timeouts option;
}
[@@deriving yojson_of]
(** aws_controltower_control *)

type t = {
  control_identifier : string prop;
  id : string prop;
  target_identifier : string prop;
}

let aws_controltower_control ?id ?timeouts ~control_identifier
    ~target_identifier __resource_id =
  let __resource_type = "aws_controltower_control" in
  let __resource =
    ({ control_identifier; id; target_identifier; timeouts }
      : aws_controltower_control)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_controltower_control __resource);
  let __resource_attributes =
    ({
       control_identifier =
         Prop.computed __resource_type __resource_id
           "control_identifier";
       id = Prop.computed __resource_type __resource_id "id";
       target_identifier =
         Prop.computed __resource_type __resource_id
           "target_identifier";
     }
      : t)
  in
  __resource_attributes
