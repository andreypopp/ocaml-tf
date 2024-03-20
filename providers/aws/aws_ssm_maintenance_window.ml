(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?allow_unassociated_targets ?description ?enabled ?end_date
    ?id ?schedule_offset ?schedule_timezone ?start_date ?tags
    ?tags_all ~cutoff ~duration ~name ~schedule __id =
  let __type = "aws_ssm_maintenance_window" in
  let __attrs =
    ({
       allow_unassociated_targets =
         Prop.computed __type __id "allow_unassociated_targets";
       cutoff = Prop.computed __type __id "cutoff";
       description = Prop.computed __type __id "description";
       duration = Prop.computed __type __id "duration";
       enabled = Prop.computed __type __id "enabled";
       end_date = Prop.computed __type __id "end_date";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       schedule = Prop.computed __type __id "schedule";
       schedule_offset = Prop.computed __type __id "schedule_offset";
       schedule_timezone =
         Prop.computed __type __id "schedule_timezone";
       start_date = Prop.computed __type __id "start_date";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_maintenance_window
        (aws_ssm_maintenance_window ?allow_unassociated_targets
           ?description ?enabled ?end_date ?id ?schedule_offset
           ?schedule_timezone ?start_date ?tags ?tags_all ~cutoff
           ~duration ~name ~schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_unassociated_targets ?description
    ?enabled ?end_date ?id ?schedule_offset ?schedule_timezone
    ?start_date ?tags ?tags_all ~cutoff ~duration ~name ~schedule
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_unassociated_targets ?description ?enabled ?end_date
      ?id ?schedule_offset ?schedule_timezone ?start_date ?tags
      ?tags_all ~cutoff ~duration ~name ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
