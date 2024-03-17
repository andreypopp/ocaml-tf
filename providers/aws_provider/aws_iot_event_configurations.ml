(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_event_configurations = {
  event_configurations : (string * bool) list;
      (** event_configurations *)
}
[@@deriving yojson_of]
(** aws_iot_event_configurations *)

let aws_iot_event_configurations ~event_configurations __resource_id
    =
  let __resource_type = "aws_iot_event_configurations" in
  let __resource = { event_configurations } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_event_configurations __resource);
  ()
