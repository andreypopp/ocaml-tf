(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appintegrations_event_integration__event_filter = {
  source : string;  (** source *)
}
[@@deriving yojson_of]
(** aws_appintegrations_event_integration__event_filter *)

type aws_appintegrations_event_integration = {
  description : string option; [@option]  (** description *)
  eventbridge_bus : string;  (** eventbridge_bus *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  event_filter :
    aws_appintegrations_event_integration__event_filter list;
}
[@@deriving yojson_of]
(** aws_appintegrations_event_integration *)

let aws_appintegrations_event_integration ?description ?tags
    ~eventbridge_bus ~name ~event_filter __resource_id =
  let __resource_type = "aws_appintegrations_event_integration" in
  let __resource =
    { description; eventbridge_bus; name; tags; event_filter }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appintegrations_event_integration __resource);
  ()
