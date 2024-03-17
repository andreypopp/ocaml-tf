(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_configuration_recorder_status = {
  is_enabled : bool;  (** is_enabled *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder_status *)

let aws_config_configuration_recorder_status ~is_enabled ~name
    __resource_id =
  let __resource_type = "aws_config_configuration_recorder_status" in
  let __resource = { is_enabled; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_configuration_recorder_status __resource);
  ()
