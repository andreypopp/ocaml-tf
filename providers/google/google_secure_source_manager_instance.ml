(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_config = {
  ca_pool : string prop;
  is_private : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_config) -> ()

let yojson_of_private_config =
  (function
   | { ca_pool = v_ca_pool; is_private = v_is_private } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_private in
         ("is_private", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ca_pool in
         ("ca_pool", arg) :: bnds
       in
       `Assoc bnds
    : private_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_config

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

type host_config = {
  api : string prop;
  git_http : string prop;
  git_ssh : string prop;
  html : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : host_config) -> ()

let yojson_of_host_config =
  (function
   | {
       api = v_api;
       git_http = v_git_http;
       git_ssh = v_git_ssh;
       html = v_html;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html in
         ("html", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_git_ssh in
         ("git_ssh", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_git_http in
         ("git_http", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api in
         ("api", arg) :: bnds
       in
       `Assoc bnds
    : host_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_host_config

[@@@deriving.end]

type google_secure_source_manager_instance = {
  id : string prop option; [@option]
  instance_id : string prop;
  kms_key : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  project : string prop option; [@option]
  private_config : private_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_secure_source_manager_instance) -> ()

let yojson_of_google_secure_source_manager_instance =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       kms_key = v_kms_key;
       labels = v_labels;
       location = v_location;
       project = v_project;
       private_config = v_private_config;
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
           yojson_of_list yojson_of_private_config v_private_config
         in
         ("private_config", arg) :: bnds
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
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_secure_source_manager_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_secure_source_manager_instance

[@@@deriving.end]

let private_config ~ca_pool ~is_private () : private_config =
  { ca_pool; is_private }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_secure_source_manager_instance ?id ?kms_key ?labels
    ?project ?timeouts ~instance_id ~location ~private_config () :
    google_secure_source_manager_instance =
  {
    id;
    instance_id;
    kms_key;
    labels;
    location;
    project;
    private_config;
    timeouts;
  }

type t = {
  create_time : string prop;
  effective_labels : (string * string) list prop;
  host_config : host_config list prop;
  id : string prop;
  instance_id : string prop;
  kms_key : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  state_note : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?id ?kms_key ?labels ?project ?timeouts ~instance_id
    ~location ~private_config __id =
  let __type = "google_secure_source_manager_instance" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       host_config = Prop.computed __type __id "host_config";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       kms_key = Prop.computed __type __id "kms_key";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       state_note = Prop.computed __type __id "state_note";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_secure_source_manager_instance
        (google_secure_source_manager_instance ?id ?kms_key ?labels
           ?project ?timeouts ~instance_id ~location ~private_config
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key ?labels ?project ?timeouts
    ~instance_id ~location ~private_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key ?labels ?project ?timeouts ~instance_id
      ~location ~private_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
