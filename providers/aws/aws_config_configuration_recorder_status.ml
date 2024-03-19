(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_configuration_recorder_status = {
  id : string prop option; [@option]  (** id *)
  is_enabled : bool prop;  (** is_enabled *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder_status *)

let aws_config_configuration_recorder_status ?id ~is_enabled ~name ()
    : aws_config_configuration_recorder_status =
  { id; is_enabled; name }

type t = {
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
}

let register ?tf_module ?id ~is_enabled ~name __resource_id =
  let __resource_type = "aws_config_configuration_recorder_status" in
  let __resource =
    aws_config_configuration_recorder_status ?id ~is_enabled ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_configuration_recorder_status __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       is_enabled =
         Prop.computed __resource_type __resource_id "is_enabled";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
