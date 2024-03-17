(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_evidently_launch__groups = {
  description : string prop option; [@option]  (** description *)
  feature : string prop;  (** feature *)
  name : string prop;  (** name *)
  variation : string prop;  (** variation *)
}
[@@deriving yojson_of]
(** aws_evidently_launch__groups *)

type aws_evidently_launch__metric_monitors__metric_definition = {
  entity_id_key : string prop;  (** entity_id_key *)
  event_pattern : string prop option; [@option]  (** event_pattern *)
  name : string prop;  (** name *)
  unit_label : string prop option; [@option]  (** unit_label *)
  value_key : string prop;  (** value_key *)
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
  evaluation_order : float prop;  (** evaluation_order *)
  segment : string prop;  (** segment *)
  weights : (string * float prop) list;  (** weights *)
}
[@@deriving yojson_of]
(** aws_evidently_launch__scheduled_splits_config__steps__segment_overrides *)

type aws_evidently_launch__scheduled_splits_config__steps = {
  group_weights : (string * float prop) list;  (** group_weights *)
  start_time : string prop;  (** start_time *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_evidently_launch__timeouts *)

type aws_evidently_launch__execution = {
  ended_time : string prop;  (** ended_time *)
  started_time : string prop;  (** started_time *)
}
[@@deriving yojson_of]

type aws_evidently_launch = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project : string prop;  (** project *)
  randomization_salt : string prop option; [@option]
      (** randomization_salt *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  groups : aws_evidently_launch__groups list;
  metric_monitors : aws_evidently_launch__metric_monitors list;
  scheduled_splits_config :
    aws_evidently_launch__scheduled_splits_config list;
  timeouts : aws_evidently_launch__timeouts option;
}
[@@deriving yojson_of]
(** aws_evidently_launch *)

let aws_evidently_launch ?description ?id ?randomization_salt ?tags
    ?tags_all ?timeouts ~name ~project ~groups ~metric_monitors
    ~scheduled_splits_config __resource_id =
  let __resource_type = "aws_evidently_launch" in
  let __resource =
    {
      description;
      id;
      name;
      project;
      randomization_salt;
      tags;
      tags_all;
      groups;
      metric_monitors;
      scheduled_splits_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_evidently_launch __resource);
  ()
