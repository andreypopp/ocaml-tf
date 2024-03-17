(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appintegrations_event_integration__event_filter = {
  source : string prop;  (** source *)
}
[@@deriving yojson_of]
(** aws_appintegrations_event_integration__event_filter *)

type aws_appintegrations_event_integration = {
  description : string prop option; [@option]  (** description *)
  eventbridge_bus : string prop;  (** eventbridge_bus *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  event_filter :
    aws_appintegrations_event_integration__event_filter list;
}
[@@deriving yojson_of]
(** aws_appintegrations_event_integration *)

let aws_appintegrations_event_integration ?description ?id ?tags
    ?tags_all ~eventbridge_bus ~name ~event_filter __resource_id =
  let __resource_type = "aws_appintegrations_event_integration" in
  let __resource =
    {
      description;
      eventbridge_bus;
      id;
      name;
      tags;
      tags_all;
      event_filter;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appintegrations_event_integration __resource);
  ()
