(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_maintenance_window = {
  allow_unassociated_targets : bool prop option; [@option]
  cutoff : float prop;
  description : string prop option; [@option]
  duration : float prop;
  enabled : bool prop option; [@option]
  end_date : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  schedule : string prop;
  schedule_offset : float prop option; [@option]
  schedule_timezone : string prop option; [@option]
  start_date : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_maintenance_window) -> ()

let yojson_of_aws_ssm_maintenance_window =
  (function
   | {
       allow_unassociated_targets = v_allow_unassociated_targets;
       cutoff = v_cutoff;
       description = v_description;
       duration = v_duration;
       enabled = v_enabled;
       end_date = v_end_date;
       id = v_id;
       name = v_name;
       schedule = v_schedule;
       schedule_offset = v_schedule_offset;
       schedule_timezone = v_schedule_timezone;
       start_date = v_start_date;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_timezone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "schedule_offset", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cutoff in
         ("cutoff", arg) :: bnds
       in
       let bnds =
         match v_allow_unassociated_targets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_unassociated_targets", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_maintenance_window

[@@@deriving.end]

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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?allow_unassociated_targets ?description ?enabled ?end_date
    ?id ?schedule_offset ?schedule_timezone ?start_date ?tags
    ?tags_all ~cutoff ~duration ~name ~schedule __id =
  let __type = "aws_ssm_maintenance_window" in
  let __attrs =
    ({
       tf_name = __id;
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
