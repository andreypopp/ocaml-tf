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
    ~name ~schedule () : aws_ssm_maintenance_window =
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

type t = {
  allow_unassociated_targets : bool prop;
  cutoff : float prop;
  description : string prop;
  duration : float prop;
  enabled : bool prop;
  end_date : string prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  schedule_offset : float prop;
  schedule_timezone : string prop;
  start_date : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?allow_unassociated_targets ?description
    ?enabled ?end_date ?id ?schedule_offset ?schedule_timezone
    ?start_date ?tags ?tags_all ~cutoff ~duration ~name ~schedule
    __resource_id =
  let __resource_type = "aws_ssm_maintenance_window" in
  let __resource =
    aws_ssm_maintenance_window ?allow_unassociated_targets
      ?description ?enabled ?end_date ?id ?schedule_offset
      ?schedule_timezone ?start_date ?tags ?tags_all ~cutoff
      ~duration ~name ~schedule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_maintenance_window __resource);
  let __resource_attributes =
    ({
       allow_unassociated_targets =
         Prop.computed __resource_type __resource_id
           "allow_unassociated_targets";
       cutoff = Prop.computed __resource_type __resource_id "cutoff";
       description =
         Prop.computed __resource_type __resource_id "description";
       duration =
         Prop.computed __resource_type __resource_id "duration";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       end_date =
         Prop.computed __resource_type __resource_id "end_date";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       schedule =
         Prop.computed __resource_type __resource_id "schedule";
       schedule_offset =
         Prop.computed __resource_type __resource_id
           "schedule_offset";
       schedule_timezone =
         Prop.computed __resource_type __resource_id
           "schedule_timezone";
       start_date =
         Prop.computed __resource_type __resource_id "start_date";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
