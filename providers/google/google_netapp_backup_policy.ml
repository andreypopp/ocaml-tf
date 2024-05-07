(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_netapp_backup_policy = {
  daily_backup_limit : float prop;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  monthly_backup_limit : float prop;
  name : string prop;
  project : string prop option; [@option]
  weekly_backup_limit : float prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_netapp_backup_policy) -> ()

let yojson_of_google_netapp_backup_policy =
  (function
   | {
       daily_backup_limit = v_daily_backup_limit;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       labels = v_labels;
       location = v_location;
       monthly_backup_limit = v_monthly_backup_limit;
       name = v_name;
       project = v_project;
       weekly_backup_limit = v_weekly_backup_limit;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_weekly_backup_limit
         in
         ("weekly_backup_limit", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_monthly_backup_limit
         in
         ("monthly_backup_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float v_daily_backup_limit
         in
         ("daily_backup_limit", arg) :: bnds
       in
       `Assoc bnds
    : google_netapp_backup_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_netapp_backup_policy

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
