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
    __resource_id =
  let __resource_type = "aws_appstream_fleet_stack_association" in
  let __resource = { fleet_name; id; stack_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_fleet_stack_association __resource);
  ()
