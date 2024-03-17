(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_maintenance_window = {
  allow_unassociated_targets : bool option; [@option]
      (** allow_unassociated_targets *)
  cutoff : float;  (** cutoff *)
  description : string option; [@option]  (** description *)
  duration : float;  (** duration *)
  enabled : bool option; [@option]  (** enabled *)
  end_date : string option; [@option]  (** end_date *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  schedule : string;  (** schedule *)
  schedule_offset : float option; [@option]  (** schedule_offset *)
  schedule_timezone : string option; [@option]
      (** schedule_timezone *)
  start_date : string option; [@option]  (** start_date *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window *)

let aws_ssm_maintenance_window ?allow_unassociated_targets
    ?description ?enabled ?end_date ?id ?schedule_offset
    ?schedule_timezone ?start_date ?tags ?tags_all ~cutoff ~duration
    ~name ~schedule __resource_id =
  let __resource_type = "aws_ssm_maintenance_window" in
  let __resource =
    {
      allow_unassociated_targets;
      cutoff;
      description;
      duration;
      enabled;
      end_date;
      id;
      name;
      schedule;
      schedule_offset;
      schedule_timezone;
      start_date;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_maintenance_window __resource);
  ()
