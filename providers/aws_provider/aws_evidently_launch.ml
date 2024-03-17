(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_evidently_launch__groups = {
  description : string option; [@option]  (** description *)
  feature : string;  (** feature *)
  name : string;  (** name *)
  variation : string;  (** variation *)
}
[@@deriving yojson_of]
(** aws_evidently_launch__groups *)

type aws_evidently_launch__metric_monitors__metric_definition = {
  entity_id_key : string;  (** entity_id_key *)
  event_pattern : string option; [@option]  (** event_pattern *)
  name : string;  (** name *)
  unit_label : string option; [@option]  (** unit_label *)
  value_key : string;  (** value_key *)
}
[@@deriving yojson_of]
(** aws_evidently_launch__metric_monitors__metric_definition *)

type aws_evidently_launch__metric_monitors = {
  metric_definition :
    aws_evidently_launch__metric_monitors__metric_definition list;
}
[@@deriving yojson_of]
(** aws_evidently_launch__metric_monitors *)

type aws_evidently_launch__scheduled_splits_config__steps__segment_overrides = {
  evaluation_order : float;  (** evaluation_order *)
  segment : string;  (** segment *)
  weights : (string * float) list;  (** weights *)
}
[@@deriving yojson_of]
(** aws_evidently_launch__scheduled_splits_config__steps__segment_overrides *)

type aws_evidently_launch__scheduled_splits_config__steps = {
  group_weights : (string * float) list;  (** group_weights *)
  start_time : string;  (** start_time *)
  segment_overrides :
    aws_evidently_launch__scheduled_splits_config__steps__segment_overrides
    list;
}
[@@deriving yojson_of]
(** aws_evidently_launch__scheduled_splits_config__steps *)

type aws_evidently_launch__scheduled_splits_config = {
  steps : aws_evidently_launch__scheduled_splits_config__steps list;
}
[@@deriving yojson_of]
(** aws_evidently_launch__scheduled_splits_config *)

type aws_evidently_launch__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_evidently_launch__timeouts *)

type aws_evidently_launch__execution = {
  ended_time : string;  (** ended_time *)
  started_time : string;  (** started_time *)
}
[@@deriving yojson_of]

type aws_evidently_launch = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  project : string;  (** project *)
  randomization_salt : string option; [@option]
      (** randomization_salt *)
  tags : (string * string) list option; [@option]  (** tags *)
  groups : aws_evidently_launch__groups list;
  metric_monitors : aws_evidently_launch__metric_monitors list;
  scheduled_splits_config :
    aws_evidently_launch__scheduled_splits_config list;
  timeouts : aws_evidently_launch__timeouts option;
}
[@@deriving yojson_of]
(** aws_evidently_launch *)

let aws_evidently_launch ?description ?randomization_salt ?tags
    ?timeouts ~name ~project ~groups ~metric_monitors
    ~scheduled_splits_config __resource_id =
  let __resource_type = "aws_evidently_launch" in
  let __resource =
    {
      description;
      name;
      project;
      randomization_salt;
      tags;
      groups;
      metric_monitors;
      scheduled_splits_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_evidently_launch __resource);
  ()
