(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_service_connect_config = {
  enable_private_service_connect : bool prop;
  project_allowlist : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_service_connect_config) -> ()

let yojson_of_private_service_connect_config =
  (function
   | {
       enable_private_service_connect =
         v_enable_private_service_connect;
       project_allowlist = v_project_allowlist;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_allowlist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "project_allowlist", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_private_service_connect
         in
         ("enable_private_service_connect", arg) :: bnds
       in
       `Assoc bnds
    : private_service_connect_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_service_connect_config

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

type google_vertex_ai_index_endpoint = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  network : string prop option; [@option]
  project : string prop option; [@option]
  public_endpoint_enabled : bool prop option; [@option]
  region : string prop option; [@option]
  private_service_connect_config :
    private_service_connect_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_index_endpoint) -> ()

let yojson_of_google_vertex_ai_index_endpoint =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       network = v_network;
       project = v_project;
       public_endpoint_enabled = v_public_endpoint_enabled;
       region = v_region;
       private_service_connect_config =
         v_private_service_connect_config;
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
         if [] = v_private_service_connect_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_service_connect_config)
               v_private_service_connect_config
           in
           let bnd = "private_service_connect_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_endpoint_enabled", arg in
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
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
    : google_vertex_ai_index_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_index_endpoint

[@@@deriving.end]

let private_service_connect_config ?project_allowlist
    ~enable_private_service_connect () :
    private_service_connect_config =
  { enable_private_service_connect; project_allowlist }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_index_endpoint ?description ?id ?labels ?network
    ?project ?public_endpoint_enabled ?region
    ?(private_service_connect_config = []) ?timeouts ~display_name ()
    : google_vertex_ai_index_endpoint =
  {
    description;
    display_name;
    id;
    labels;
    network;
    project;
    public_endpoint_enabled;
    region;
    private_service_connect_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  public_endpoint_domain_name : string prop;
  public_endpoint_enabled : bool prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?network ?project
    ?public_endpoint_enabled ?region
    ?(private_service_connect_config = []) ?timeouts ~display_name
    __id =
  let __type = "google_vertex_ai_index_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       public_endpoint_domain_name =
         Prop.computed __type __id "public_endpoint_domain_name";
       public_endpoint_enabled =
         Prop.computed __type __id "public_endpoint_enabled";
       region = Prop.computed __type __id "region";
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
      yojson_of_google_vertex_ai_index_endpoint
        (google_vertex_ai_index_endpoint ?description ?id ?labels
           ?network ?project ?public_endpoint_enabled ?region
           ~private_service_connect_config ?timeouts ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?network ?project
    ?public_endpoint_enabled ?region
    ?(private_service_connect_config = []) ?timeouts ~display_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?network ?project
      ?public_endpoint_enabled ?region
      ~private_service_connect_config ?timeouts ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
