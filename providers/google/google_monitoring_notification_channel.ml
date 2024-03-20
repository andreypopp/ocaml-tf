(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sensitive_labels = {
  auth_token : string prop option; [@option]
  password : string prop option; [@option]
  service_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sensitive_labels) -> ()

let yojson_of_sensitive_labels =
  (function
   | {
       auth_token = v_auth_token;
       password = v_password;
       service_key = v_service_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sensitive_labels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sensitive_labels

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

type google_monitoring_notification_channel = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  enabled : bool prop option; [@option]
  force_delete : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  project : string prop option; [@option]
  type_ : string prop; [@key "type"]
  user_labels : (string * string prop) list option; [@option]
  sensitive_labels : sensitive_labels list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_notification_channel) -> ()

let yojson_of_google_monitoring_notification_channel =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       enabled = v_enabled;
       force_delete = v_force_delete;
       id = v_id;
       labels = v_labels;
       project = v_project;
       type_ = v_type_;
       user_labels = v_user_labels;
       sensitive_labels = v_sensitive_labels;
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
           yojson_of_list yojson_of_sensitive_labels
             v_sensitive_labels
         in
         ("sensitive_labels", arg) :: bnds
       in
       let bnds =
         match v_user_labels with
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
             let bnd = "user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : google_monitoring_notification_channel ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_notification_channel

[@@@deriving.end]

let sensitive_labels ?auth_token ?password ?service_key () :
    sensitive_labels =
  { auth_token; password; service_key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_notification_channel ?description ?display_name
    ?enabled ?force_delete ?id ?labels ?project ?user_labels
    ?timeouts ~type_ ~sensitive_labels () :
    google_monitoring_notification_channel =
  {
    description;
    display_name;
    enabled;
    force_delete;
    id;
    labels;
    project;
    type_;
    user_labels;
    sensitive_labels;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  force_delete : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
  user_labels : (string * string) list prop;
  verification_status : string prop;
}

let make ?description ?display_name ?enabled ?force_delete ?id
    ?labels ?project ?user_labels ?timeouts ~type_ ~sensitive_labels
    __id =
  let __type = "google_monitoring_notification_channel" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       type_ = Prop.computed __type __id "type";
       user_labels = Prop.computed __type __id "user_labels";
       verification_status =
         Prop.computed __type __id "verification_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_notification_channel
        (google_monitoring_notification_channel ?description
           ?display_name ?enabled ?force_delete ?id ?labels ?project
           ?user_labels ?timeouts ~type_ ~sensitive_labels ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?enabled
    ?force_delete ?id ?labels ?project ?user_labels ?timeouts ~type_
    ~sensitive_labels __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?enabled ?force_delete ?id
      ?labels ?project ?user_labels ?timeouts ~type_
      ~sensitive_labels __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
