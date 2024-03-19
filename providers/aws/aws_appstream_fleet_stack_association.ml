(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appstream_fleet_stack_association = {
  fleet_name : string prop;  (** fleet_name *)
  id : string prop option; [@option]  (** id *)
  stack_name : string prop;  (** stack_name *)
}
[@@deriving yojson_of]
(** aws_appstream_fleet_stack_association *)

let aws_appstream_fleet_stack_association ?id ~fleet_name ~stack_name
    () : aws_appstream_fleet_stack_association =
  { fleet_name; id; stack_name }

type t = {
  fleet_name : string prop;
  id : string prop;
  stack_name : string prop;
}

let register ?tf_module ?id ~fleet_name ~stack_name __resource_id =
  let __resource_type = "aws_appstream_fleet_stack_association" in
  let __resource =
    aws_appstream_fleet_stack_association ?id ~fleet_name ~stack_name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_fleet_stack_association __resource);
  let __resource_attributes =
    ({
       fleet_name =
         Prop.computed __resource_type __resource_id "fleet_name";
       id = Prop.computed __resource_type __resource_id "id";
       stack_name =
         Prop.computed __resource_type __resource_id "stack_name";
     }
      : t)
  in
  __resource_attributes
