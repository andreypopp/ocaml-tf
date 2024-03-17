(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_trigger__actions__notification_property = {
  notify_delay_after : float option; [@option]
      (** notify_delay_after *)
}
[@@deriving yojson_of]
(** aws_glue_trigger__actions__notification_property *)

type aws_glue_trigger__actions = {
  arguments : (string * string) list option; [@option]
      (** arguments *)
  crawler_name : string option; [@option]  (** crawler_name *)
  job_name : string option; [@option]  (** job_name *)
  security_configuration : string option; [@option]
      (** security_configuration *)
  timeout : float option; [@option]  (** timeout *)
  notification_property :
    aws_glue_trigger__actions__notification_property list;
}
[@@deriving yojson_of]
(** aws_glue_trigger__actions *)

type aws_glue_trigger__event_batching_condition = {
  batch_size : float;  (** batch_size *)
  batch_window : float option; [@option]  (** batch_window *)
}
[@@deriving yojson_of]
(** aws_glue_trigger__event_batching_condition *)

type aws_glue_trigger__predicate__conditions = {
  crawl_state : string option; [@option]  (** crawl_state *)
  crawler_name : string option; [@option]  (** crawler_name *)
  job_name : string option; [@option]  (** job_name *)
  logical_operator : string option; [@option]
      (** logical_operator *)
  state : string option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_glue_trigger__predicate__conditions *)

type aws_glue_trigger__predicate = {
  logical : string option; [@option]  (** logical *)
  conditions : aws_glue_trigger__predicate__conditions list;
}
[@@deriving yojson_of]
(** aws_glue_trigger__predicate *)

type aws_glue_trigger__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_glue_trigger__timeouts *)

type aws_glue_trigger = {
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  schedule : string option; [@option]  (** schedule *)
  start_on_creation : bool option; [@option]
      (** start_on_creation *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  workflow_name : string option; [@option]  (** workflow_name *)
  actions : aws_glue_trigger__actions list;
  event_batching_condition :
    aws_glue_trigger__event_batching_condition list;
  predicate : aws_glue_trigger__predicate list;
  timeouts : aws_glue_trigger__timeouts option;
}
[@@deriving yojson_of]
(** aws_glue_trigger *)

let aws_glue_trigger ?description ?enabled ?schedule
    ?start_on_creation ?tags ?workflow_name ?timeouts ~name ~type_
    ~actions ~event_batching_condition ~predicate __resource_id =
  let __resource_type = "aws_glue_trigger" in
  let __resource =
    {
      description;
      enabled;
      name;
      schedule;
      start_on_creation;
      tags;
      type_;
      workflow_name;
      actions;
      event_batching_condition;
      predicate;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_trigger __resource);
  ()
