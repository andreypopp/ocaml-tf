(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type password_policy__status = {
  locked : bool prop;
  password_expiration_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : password_policy__status) -> ()

let yojson_of_password_policy__status =
  (function
   | {
       locked = v_locked;
       password_expiration_time = v_password_expiration_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_expiration_time
         in
         ("password_expiration_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_locked in
         ("locked", arg) :: bnds
       in
       `Assoc bnds
    : password_policy__status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_password_policy__status

[@@@deriving.end]

type password_policy = {
  allowed_failed_attempts : float prop option; [@option]
  enable_failed_attempts_check : bool prop option; [@option]
  enable_password_verification : bool prop option; [@option]
  password_expiration_duration : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : password_policy) -> ()

let yojson_of_password_policy =
  (function
   | {
       allowed_failed_attempts = v_allowed_failed_attempts;
       enable_failed_attempts_check = v_enable_failed_attempts_check;
       enable_password_verification = v_enable_password_verification;
       password_expiration_duration = v_password_expiration_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_password_expiration_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_expiration_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_password_verification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_password_verification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_failed_attempts_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_failed_attempts_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_failed_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "allowed_failed_attempts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : password_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_password_policy

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

type sql_server_user_details = {
  disabled : bool prop;
  server_roles : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sql_server_user_details) -> ()

let yojson_of_sql_server_user_details =
  (function
   | { disabled = v_disabled; server_roles = v_server_roles } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_server_roles then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_server_roles
           in
           let bnd = "server_roles", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : sql_server_user_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sql_server_user_details

[@@@deriving.end]

type google_sql_user = {
  deletion_policy : string prop option; [@option]
  host : string prop option; [@option]
  id : string prop option; [@option]
  instance : string prop;
  name : string prop;
  password : string prop option; [@option]
  project : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  password_policy : password_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_user) -> ()

let yojson_of_google_sql_user =
  (function
   | {
       deletion_policy = v_deletion_policy;
       host = v_host;
       id = v_id;
       instance = v_instance;
       name = v_name;
       password = v_password;
       project = v_project;
       type_ = v_type_;
       password_policy = v_password_policy;
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
         if Stdlib.( = ) [] v_password_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_password_policy)
               v_password_policy
           in
           let bnd = "password_policy", arg in
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
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_sql_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_user

[@@@deriving.end]

let password_policy ?allowed_failed_attempts
    ?enable_failed_attempts_check ?enable_password_verification
    ?password_expiration_duration () : password_policy =
  {
    allowed_failed_attempts;
    enable_failed_attempts_check;
    enable_password_verification;
    password_expiration_duration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_sql_user ?deletion_policy ?host ?id ?password ?project
    ?type_ ?(password_policy = []) ?timeouts ~instance ~name () :
    google_sql_user =
  {
    deletion_policy;
    host;
    id;
    instance;
    name;
    password;
    project;
    type_;
    password_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  deletion_policy : string prop;
  host : string prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  password : string prop;
  project : string prop;
  sql_server_user_details : sql_server_user_details list prop;
  type_ : string prop;
}

let make ?deletion_policy ?host ?id ?password ?project ?type_
    ?(password_policy = []) ?timeouts ~instance ~name __id =
  let __type = "google_sql_user" in
  let __attrs =
    ({
       tf_name = __id;
       deletion_policy = Prop.computed __type __id "deletion_policy";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       project = Prop.computed __type __id "project";
       sql_server_user_details =
         Prop.computed __type __id "sql_server_user_details";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_user
        (google_sql_user ?deletion_policy ?host ?id ?password
           ?project ?type_ ~password_policy ?timeouts ~instance ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?host ?id ?password ?project
    ?type_ ?(password_policy = []) ?timeouts ~instance ~name __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?host ?id ?password ?project ?type_
      ~password_policy ?timeouts ~instance ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
