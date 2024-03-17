(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_maintenance_window = {
  allow_unassociated_targets : bool prop option; [@option]
      (** allow_unassociated_targets *)
  cutoff : float prop;  (** cutoff *)
  description : string prop option; [@option]  (** description *)
  duration : float prop;  (** duration *)
  enabled : bool prop option; [@option]  (** enabled *)
  end_date : string prop option; [@option]  (** end_date *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  schedule : string prop;  (** schedule *)
  schedule_offset : float prop option; [@option]
      (** schedule_offset *)
  schedule_timezone : string prop option; [@option]
      (** schedule_timezone *)
  start_date : string prop option; [@option]  (** start_date *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
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
