(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_netapp_backup_policy = {
  daily_backup_limit : float prop;
      (** Number of daily backups to keep. Note that the minimum daily backup limit is 2. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  enabled : bool prop option; [@option]
      (** If enabled, make backups automatically according to the schedules.
This will be applied to all volumes that have this policy attached and enforced on volume level. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Name of the region for the policy to apply to. *)
  monthly_backup_limit : float prop;
      (** Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1. *)
  name : string prop;
      (** The name of the backup policy. Needs to be unique per location. *)
  project : string prop option; [@option]  (** project *)
  weekly_backup_limit : float prop;
      (** Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_backup_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_backup_policy ?description ?enabled ?id ?labels
    ?project ?timeouts ~daily_backup_limit ~location
    ~monthly_backup_limit ~name ~weekly_backup_limit () :
    google_netapp_backup_policy =
  {
    daily_backup_limit;
    description;
    enabled;
    id;
    labels;
    location;
    monthly_backup_limit;
    name;
    project;
    weekly_backup_limit;
    timeouts;
  }

type t = {
  assigned_volume_count : float prop;
  create_time : string prop;
  daily_backup_limit : float prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  enabled : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  monthly_backup_limit : float prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  weekly_backup_limit : float prop;
}

let make ?description ?enabled ?id ?labels ?project ?timeouts
    ~daily_backup_limit ~location ~monthly_backup_limit ~name
    ~weekly_backup_limit __id =
  let __type = "google_netapp_backup_policy" in
  let __attrs =
    ({
       assigned_volume_count =
         Prop.computed __type __id "assigned_volume_count";
       create_time = Prop.computed __type __id "create_time";
       daily_backup_limit =
         Prop.computed __type __id "daily_backup_limit";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       monthly_backup_limit =
         Prop.computed __type __id "monthly_backup_limit";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       weekly_backup_limit =
         Prop.computed __type __id "weekly_backup_limit";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_backup_policy
        (google_netapp_backup_policy ?description ?enabled ?id
           ?labels ?project ?timeouts ~daily_backup_limit ~location
           ~monthly_backup_limit ~name ~weekly_backup_limit ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?labels ?project
    ?timeouts ~daily_backup_limit ~location ~monthly_backup_limit
    ~name ~weekly_backup_limit __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?labels ?project ?timeouts
      ~daily_backup_limit ~location ~monthly_backup_limit ~name
      ~weekly_backup_limit __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
