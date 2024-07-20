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

type google_network_security_tls_inspection_policy = {
  ca_pool : string prop;
  custom_tls_features : string prop list option; [@option]
  description : string prop option; [@option]
  exclude_public_ca_set : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  min_tls_version : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  tls_feature_profile : string prop option; [@option]
  trust_config : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_security_tls_inspection_policy) -> ()

let yojson_of_google_network_security_tls_inspection_policy =
  (function
   | {
       ca_pool = v_ca_pool;
       custom_tls_features = v_custom_tls_features;
       description = v_description;
       exclude_public_ca_set = v_exclude_public_ca_set;
       id = v_id;
       location = v_location;
       min_tls_version = v_min_tls_version;
       name = v_name;
       project = v_project;
       tls_feature_profile = v_tls_feature_profile;
       trust_config = v_trust_config;
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
         match v_trust_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trust_config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tls_feature_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_feature_profile", arg in
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
         match v_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_tls_version", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_public_ca_set with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_public_ca_set", arg in
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
         match v_custom_tls_features with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_tls_features", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ca_pool in
         ("ca_pool", arg) :: bnds
       in
       `Assoc bnds
    : google_network_security_tls_inspection_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_security_tls_inspection_policy

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_tls_inspection_policy
    ?custom_tls_features ?description ?exclude_public_ca_set ?id
    ?location ?min_tls_version ?project ?tls_feature_profile
    ?trust_config ?timeouts ~ca_pool ~name () :
    google_network_security_tls_inspection_policy =
  {
    ca_pool;
    custom_tls_features;
    description;
    exclude_public_ca_set;
    id;
    location;
    min_tls_version;
    name;
    project;
    tls_feature_profile;
    trust_config;
    timeouts;
  }

type t = {
  tf_name : string;
  ca_pool : string prop;
  create_time : string prop;
  custom_tls_features : string list prop;
  description : string prop;
  exclude_public_ca_set : bool prop;
  id : string prop;
  location : string prop;
  min_tls_version : string prop;
  name : string prop;
  project : string prop;
  tls_feature_profile : string prop;
  trust_config : string prop;
  update_time : string prop;
}

let make ?custom_tls_features ?description ?exclude_public_ca_set ?id
    ?location ?min_tls_version ?project ?tls_feature_profile
    ?trust_config ?timeouts ~ca_pool ~name __id =
  let __type = "google_network_security_tls_inspection_policy" in
  let __attrs =
    ({
       tf_name = __id;
       ca_pool = Prop.computed __type __id "ca_pool";
       create_time = Prop.computed __type __id "create_time";
       custom_tls_features =
         Prop.computed __type __id "custom_tls_features";
       description = Prop.computed __type __id "description";
       exclude_public_ca_set =
         Prop.computed __type __id "exclude_public_ca_set";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       min_tls_version = Prop.computed __type __id "min_tls_version";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       tls_feature_profile =
         Prop.computed __type __id "tls_feature_profile";
       trust_config = Prop.computed __type __id "trust_config";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_security_tls_inspection_policy
        (google_network_security_tls_inspection_policy
           ?custom_tls_features ?description ?exclude_public_ca_set
           ?id ?location ?min_tls_version ?project
           ?tls_feature_profile ?trust_config ?timeouts ~ca_pool
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_tls_features ?description
    ?exclude_public_ca_set ?id ?location ?min_tls_version ?project
    ?tls_feature_profile ?trust_config ?timeouts ~ca_pool ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?custom_tls_features ?description ?exclude_public_ca_set ?id
      ?location ?min_tls_version ?project ?tls_feature_profile
      ?trust_config ?timeouts ~ca_pool ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
