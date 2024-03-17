(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_event_configurations = {
  event_configurations : (string * bool prop) list;
      (** event_configurations *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_iot_event_configurations *)

type t = {
  event_configurations : (string * bool) list prop;
  id : string prop;
}

let aws_iot_event_configurations ?id ~event_configurations
    __resource_id =
  let __resource_type = "aws_iot_event_configurations" in
  let __resource =
    ({ event_configurations; id } : aws_iot_event_configurations)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_event_configurations __resource);
  let __resource_attributes =
    ({
       event_configurations =
         Prop.computed __resource_type __resource_id
           "event_configurations";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
