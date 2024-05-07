(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_restrictions__allowed_services = {
  domain : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_restrictions__allowed_services) -> ()

let yojson_of_access_restrictions__allowed_services =
  (function
   | { domain = v_domain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_restrictions__allowed_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_restrictions__allowed_services

[@@@deriving.end]

type access_restrictions = {
  disable_programmatic_signin : bool prop option; [@option]
  allowed_services : access_restrictions__allowed_services list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_restrictions) -> ()

let yojson_of_access_restrictions =
  (function
   | {
       disable_programmatic_signin = v_disable_programmatic_signin;
       allowed_services = v_allowed_services;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_access_restrictions__allowed_services
             v_allowed_services
         in
         ("allowed_services", arg) :: bnds
       in
       let bnds =
         match v_disable_programmatic_signin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_programmatic_signin", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_restrictions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_restrictions

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

type google_iam_workforce_pool = {
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  parent : string prop;
  session_duration : string prop option; [@option]
  workforce_pool_id : string prop;
  access_restrictions : access_restrictions list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_workforce_pool) -> ()

let yojson_of_google_iam_workforce_pool =
  (function
   | {
       description = v_description;
       disabled = v_disabled;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       parent = v_parent;
       session_duration = v_session_duration;
       workforce_pool_id = v_workforce_pool_id;
       access_restrictions = v_access_restrictions;
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
           yojson_of_list yojson_of_access_restrictions
             v_access_restrictions
         in
         ("access_restrictions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workforce_pool_id
         in
         ("workforce_pool_id", arg) :: bnds
       in
       let bnds =
         match v_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
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
    : google_iam_workforce_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_workforce_pool

[@@@deriving.end]

let access_restrictions__allowed_services ?domain () :
    access_restrictions__allowed_services =
  { domain }

let access_restrictions ?disable_programmatic_signin
    ?(allowed_services = []) () : access_restrictions =
  { disable_programmatic_signin; allowed_services }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_workforce_pool ?description ?disabled ?display_name
    ?id ?session_duration ?(access_restrictions = []) ?timeouts
    ~location ~parent ~workforce_pool_id () :
    google_iam_workforce_pool =
  {
    description;
    disabled;
    display_name;
    id;
    location;
    parent;
    session_duration;
    workforce_pool_id;
    access_restrictions;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  session_duration : string prop;
  state : string prop;
  workforce_pool_id : string prop;
}

let make ?description ?disabled ?display_name ?id ?session_duration
    ?(access_restrictions = []) ?timeouts ~location ~parent
    ~workforce_pool_id __id =
  let __type = "google_iam_workforce_pool" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       session_duration =
         Prop.computed __type __id "session_duration";
       state = Prop.computed __type __id "state";
       workforce_pool_id =
         Prop.computed __type __id "workforce_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_workforce_pool
        (google_iam_workforce_pool ?description ?disabled
           ?display_name ?id ?session_duration ~access_restrictions
           ?timeouts ~location ~parent ~workforce_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?display_name ?id
    ?session_duration ?(access_restrictions = []) ?timeouts ~location
    ~parent ~workforce_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?display_name ?id ?session_duration
      ~access_restrictions ?timeouts ~location ~parent
      ~workforce_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
