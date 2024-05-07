(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_volume_parameters = {
  description : string prop option; [@option]
  share_name : string prop option; [@option]
  storage_pool : string prop;
  volume_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_volume_parameters) -> ()

let yojson_of_destination_volume_parameters =
  (function
   | {
       description = v_description;
       share_name = v_share_name;
       storage_pool = v_storage_pool;
       volume_id = v_volume_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_pool in
         ("storage_pool", arg) :: bnds
       in
       let bnds =
         match v_share_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "share_name", arg in
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
       `Assoc bnds
    : destination_volume_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_volume_parameters

[@@@deriving.end]

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

type transfer_stats = {
  lag_duration : string prop;
  last_transfer_bytes : string prop;
  last_transfer_duration : string prop;
  last_transfer_end_time : string prop;
  last_transfer_error : string prop;
  total_transfer_duration : string prop;
  transfer_bytes : string prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_stats) -> ()

let yojson_of_transfer_stats =
  (function
   | {
       lag_duration = v_lag_duration;
       last_transfer_bytes = v_last_transfer_bytes;
       last_transfer_duration = v_last_transfer_duration;
       last_transfer_end_time = v_last_transfer_end_time;
       last_transfer_error = v_last_transfer_error;
       total_transfer_duration = v_total_transfer_duration;
       transfer_bytes = v_transfer_bytes;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transfer_bytes
         in
         ("transfer_bytes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_total_transfer_duration
         in
         ("total_transfer_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_transfer_error
         in
         ("last_transfer_error", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_transfer_end_time
         in
         ("last_transfer_end_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_transfer_duration
         in
         ("last_transfer_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_transfer_bytes
         in
         ("last_transfer_bytes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lag_duration in
         ("lag_duration", arg) :: bnds
       in
       `Assoc bnds
    : transfer_stats -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_stats

[@@@deriving.end]

type google_netapp_volume_replication = {
  delete_destination_volume : bool prop option; [@option]
  description : string prop option; [@option]
  force_stopping : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  replication_enabled : bool prop option; [@option]
  replication_schedule : string prop;
  volume_name : string prop;
  wait_for_mirror : bool prop option; [@option]
  destination_volume_parameters : destination_volume_parameters list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_netapp_volume_replication) -> ()

let yojson_of_google_netapp_volume_replication =
  (function
   | {
       delete_destination_volume = v_delete_destination_volume;
       description = v_description;
       force_stopping = v_force_stopping;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       replication_enabled = v_replication_enabled;
       replication_schedule = v_replication_schedule;
       volume_name = v_volume_name;
       wait_for_mirror = v_wait_for_mirror;
       destination_volume_parameters =
         v_destination_volume_parameters;
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
           yojson_of_list yojson_of_destination_volume_parameters
             v_destination_volume_parameters
         in
         ("destination_volume_parameters", arg) :: bnds
       in
       let bnds =
         match v_wait_for_mirror with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_mirror", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_schedule
         in
         ("replication_schedule", arg) :: bnds
       in
       let bnds =
         match v_replication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replication_enabled", arg in
             bnd :: bnds
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
         match v_force_stopping with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_stopping", arg in
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
         match v_delete_destination_volume with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_destination_volume", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_netapp_volume_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_netapp_volume_replication

[@@@deriving.end]

let destination_volume_parameters ?description ?share_name ?volume_id
    ~storage_pool () : destination_volume_parameters =
  { description; share_name; storage_pool; volume_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_volume_replication ?delete_destination_volume
    ?description ?force_stopping ?id ?labels ?project
    ?replication_enabled ?wait_for_mirror
    ?(destination_volume_parameters = []) ?timeouts ~location ~name
    ~replication_schedule ~volume_name () :
    google_netapp_volume_replication =
  {
    delete_destination_volume;
    description;
    force_stopping;
    id;
    labels;
    location;
    name;
    project;
    replication_enabled;
    replication_schedule;
    volume_name;
    wait_for_mirror;
    destination_volume_parameters;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  delete_destination_volume : bool prop;
  description : string prop;
  destination_volume : string prop;
  effective_labels : (string * string) list prop;
  force_stopping : bool prop;
  healthy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  mirror_state : string prop;
  name : string prop;
  project : string prop;
  replication_enabled : bool prop;
  replication_schedule : string prop;
  role : string prop;
  source_volume : string prop;
  state : string prop;
  state_details : string prop;
  terraform_labels : (string * string) list prop;
  transfer_stats : transfer_stats list prop;
  volume_name : string prop;
  wait_for_mirror : bool prop;
}

let make ?delete_destination_volume ?description ?force_stopping ?id
    ?labels ?project ?replication_enabled ?wait_for_mirror
    ?(destination_volume_parameters = []) ?timeouts ~location ~name
    ~replication_schedule ~volume_name __id =
  let __type = "google_netapp_volume_replication" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       delete_destination_volume =
         Prop.computed __type __id "delete_destination_volume";
       description = Prop.computed __type __id "description";
       destination_volume =
         Prop.computed __type __id "destination_volume";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       force_stopping = Prop.computed __type __id "force_stopping";
       healthy = Prop.computed __type __id "healthy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       mirror_state = Prop.computed __type __id "mirror_state";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       replication_enabled =
         Prop.computed __type __id "replication_enabled";
       replication_schedule =
         Prop.computed __type __id "replication_schedule";
       role = Prop.computed __type __id "role";
       source_volume = Prop.computed __type __id "source_volume";
       state = Prop.computed __type __id "state";
       state_details = Prop.computed __type __id "state_details";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       transfer_stats = Prop.computed __type __id "transfer_stats";
       volume_name = Prop.computed __type __id "volume_name";
       wait_for_mirror = Prop.computed __type __id "wait_for_mirror";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_volume_replication
        (google_netapp_volume_replication ?delete_destination_volume
           ?description ?force_stopping ?id ?labels ?project
           ?replication_enabled ?wait_for_mirror
           ~destination_volume_parameters ?timeouts ~location ~name
           ~replication_schedule ~volume_name ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_destination_volume ?description
    ?force_stopping ?id ?labels ?project ?replication_enabled
    ?wait_for_mirror ?(destination_volume_parameters = []) ?timeouts
    ~location ~name ~replication_schedule ~volume_name __id =
  let (r : _ Tf_core.resource) =
    make ?delete_destination_volume ?description ?force_stopping ?id
      ?labels ?project ?replication_enabled ?wait_for_mirror
      ~destination_volume_parameters ?timeouts ~location ~name
      ~replication_schedule ~volume_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
