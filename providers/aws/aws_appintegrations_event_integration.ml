(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type event_filter = { source : string prop  (** source *) }
[@@deriving yojson_of]
(** event_filter *)

type aws_appintegrations_event_integration = {
  description : string prop option; [@option]  (** description *)
  eventbridge_bus : string prop;  (** eventbridge_bus *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  event_filter : event_filter list;
}
[@@deriving yojson_of]
(** aws_appintegrations_event_integration *)

let event_filter ~source () : event_filter = { source }

let aws_appintegrations_event_integration ?description ?id ?tags
    ?tags_all ~eventbridge_bus ~name ~event_filter () :
    aws_appintegrations_event_integration =
  {
    description;
    eventbridge_bus;
    id;
    name;
    tags;
    tags_all;
    event_filter;
  }

type t = {
  arn : string prop;
  description : string prop;
  eventbridge_bus : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all
    ~eventbridge_bus ~name ~event_filter __resource_id =
  let __resource_type = "aws_appintegrations_event_integration" in
  let __resource =
    aws_appintegrations_event_integration ?description ?id ?tags
      ?tags_all ~eventbridge_bus ~name ~event_filter ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appintegrations_event_integration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       eventbridge_bus =
         Prop.computed __resource_type __resource_id
           "eventbridge_bus";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
