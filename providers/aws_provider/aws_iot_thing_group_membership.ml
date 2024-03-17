(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_thing_group_membership = {
  id : string prop option; [@option]  (** id *)
  override_dynamic_group : bool prop option; [@option]
      (** override_dynamic_group *)
  thing_group_name : string prop;  (** thing_group_name *)
  thing_name : string prop;  (** thing_name *)
}
[@@deriving yojson_of]
(** aws_iot_thing_group_membership *)

let aws_iot_thing_group_membership ?id ?override_dynamic_group
    ~thing_group_name ~thing_name __resource_id =
  let __resource_type = "aws_iot_thing_group_membership" in
  let __resource =
    { id; override_dynamic_group; thing_group_name; thing_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing_group_membership __resource);
  ()
