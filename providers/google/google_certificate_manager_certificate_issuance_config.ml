(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certificate_authority_config__certificate_authority_service_config = {
  ca_pool : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_authority_config__certificate_authority_service_config) ->
  ()

let yojson_of_certificate_authority_config__certificate_authority_service_config
    =
  (function
   | { ca_pool = v_ca_pool } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ca_pool in
         ("ca_pool", arg) :: bnds
       in
       `Assoc bnds
    : certificate_authority_config__certificate_authority_service_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_authority_config__certificate_authority_service_config

[@@@deriving.end]

type certificate_authority_config = {
  certificate_authority_service_config :
    certificate_authority_config__certificate_authority_service_config
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_authority_config) -> ()

let yojson_of_certificate_authority_config =
  (function
   | {
       certificate_authority_service_config =
         v_certificate_authority_service_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_authority_config__certificate_authority_service_config
             v_certificate_authority_service_config
         in
         ("certificate_authority_service_config", arg) :: bnds
       in
       `Assoc bnds
    : certificate_authority_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_authority_config

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

type google_certificate_manager_certificate_issuance_config = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  key_algorithm : string prop;
  labels : (string * string prop) list option; [@option]
  lifetime : string prop;
  location : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  rotation_window_percentage : float prop;
  certificate_authority_config : certificate_authority_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_certificate_manager_certificate_issuance_config) ->
  ()

let yojson_of_google_certificate_manager_certificate_issuance_config
    =
  (function
   | {
       description = v_description;
       id = v_id;
       key_algorithm = v_key_algorithm;
       labels = v_labels;
       lifetime = v_lifetime;
       location = v_location;
       name = v_name;
       project = v_project;
       rotation_window_percentage = v_rotation_window_percentage;
       certificate_authority_config = v_certificate_authority_config;
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
           yojson_of_list yojson_of_certificate_authority_config
             v_certificate_authority_config
         in
         ("certificate_authority_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_rotation_window_percentage
         in
         ("rotation_window_percentage", arg) :: bnds
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lifetime in
         ("lifetime", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_key_algorithm in
         ("key_algorithm", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_certificate_manager_certificate_issuance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_certificate_manager_certificate_issuance_config

[@@@deriving.end]

let certificate_authority_config__certificate_authority_service_config
    ~ca_pool () :
    certificate_authority_config__certificate_authority_service_config
    =
  { ca_pool }

let certificate_authority_config
    ~certificate_authority_service_config () :
    certificate_authority_config =
  { certificate_authority_service_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_certificate_manager_certificate_issuance_config
    ?description ?id ?labels ?location ?project ?timeouts
    ~key_algorithm ~lifetime ~name ~rotation_window_percentage
    ~certificate_authority_config () :
    google_certificate_manager_certificate_issuance_config =
  {
    description;
    id;
    key_algorithm;
    labels;
    lifetime;
    location;
    name;
    project;
    rotation_window_percentage;
    certificate_authority_config;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  key_algorithm : string prop;
  labels : (string * string) list prop;
  lifetime : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  rotation_window_percentage : float prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?location ?project ?timeouts
    ~key_algorithm ~lifetime ~name ~rotation_window_percentage
    ~certificate_authority_config __id =
  let __type =
    "google_certificate_manager_certificate_issuance_config"
  in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       key_algorithm = Prop.computed __type __id "key_algorithm";
       labels = Prop.computed __type __id "labels";
       lifetime = Prop.computed __type __id "lifetime";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       rotation_window_percentage =
         Prop.computed __type __id "rotation_window_percentage";
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
      yojson_of_google_certificate_manager_certificate_issuance_config
        (google_certificate_manager_certificate_issuance_config
           ?description ?id ?labels ?location ?project ?timeouts
           ~key_algorithm ~lifetime ~name ~rotation_window_percentage
           ~certificate_authority_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?location ?project
    ?timeouts ~key_algorithm ~lifetime ~name
    ~rotation_window_percentage ~certificate_authority_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?location ?project ?timeouts
      ~key_algorithm ~lifetime ~name ~rotation_window_percentage
      ~certificate_authority_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
