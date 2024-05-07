(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sensitive_labels = {
  auth_token : string prop;
  password : string prop;
  service_key : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_service_key in
         ("service_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_token in
         ("auth_token", arg) :: bnds
       in
       `Assoc bnds
    : sensitive_labels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sensitive_labels

[@@@deriving.end]

type google_monitoring_notification_channel = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  project : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  user_labels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_notification_channel) -> ()

let yojson_of_google_monitoring_notification_channel =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       project = v_project;
       type_ = v_type_;
       user_labels = v_user_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_monitoring_notification_channel ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_notification_channel

[@@@deriving.end]

let google_monitoring_notification_channel ?display_name ?id ?labels
    ?project ?type_ ?user_labels () :
    google_monitoring_notification_channel =
  { display_name; id; labels; project; type_; user_labels }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  force_delete : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  sensitive_labels : sensitive_labels list prop;
  type_ : string prop;
  user_labels : (string * string) list prop;
  verification_status : string prop;
}

let make ?display_name ?id ?labels ?project ?type_ ?user_labels __id
    =
  let __type = "google_monitoring_notification_channel" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       sensitive_labels =
         Prop.computed __type __id "sensitive_labels";
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
        (google_monitoring_notification_channel ?display_name ?id
           ?labels ?project ?type_ ?user_labels ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?labels ?project ?type_
    ?user_labels __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?labels ?project ?type_ ?user_labels __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
