(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       description = v_description;
       expression = v_expression;
       location = v_location;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
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
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type feed_output_config__pubsub_destination = { topic : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : feed_output_config__pubsub_destination) -> ()

let yojson_of_feed_output_config__pubsub_destination =
  (function
   | { topic = v_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       `Assoc bnds
    : feed_output_config__pubsub_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_feed_output_config__pubsub_destination

[@@@deriving.end]

type feed_output_config = {
  pubsub_destination : feed_output_config__pubsub_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : feed_output_config) -> ()

let yojson_of_feed_output_config =
  (function
   | { pubsub_destination = v_pubsub_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_feed_output_config__pubsub_destination
             v_pubsub_destination
         in
         ("pubsub_destination", arg) :: bnds
       in
       `Assoc bnds
    : feed_output_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_feed_output_config

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

type google_cloud_asset_project_feed = {
  asset_names : string prop list option; [@option]
  asset_types : string prop list option; [@option]
  billing_project : string prop option; [@option]
  content_type : string prop option; [@option]
  feed_id : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  condition : condition list;
  feed_output_config : feed_output_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_asset_project_feed) -> ()

let yojson_of_google_cloud_asset_project_feed =
  (function
   | {
       asset_names = v_asset_names;
       asset_types = v_asset_types;
       billing_project = v_billing_project;
       content_type = v_content_type;
       feed_id = v_feed_id;
       id = v_id;
       project = v_project;
       condition = v_condition;
       feed_output_config = v_feed_output_config;
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
           yojson_of_list yojson_of_feed_output_config
             v_feed_output_config
         in
         ("feed_output_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_feed_id in
         ("feed_id", arg) :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_billing_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_asset_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "asset_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_asset_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "asset_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_asset_project_feed ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_asset_project_feed

[@@@deriving.end]

let condition ?description ?location ?title ~expression () :
    condition =
  { description; expression; location; title }

let feed_output_config__pubsub_destination ~topic () :
    feed_output_config__pubsub_destination =
  { topic }

let feed_output_config ~pubsub_destination () : feed_output_config =
  { pubsub_destination }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_asset_project_feed ?asset_names ?asset_types
    ?billing_project ?content_type ?id ?project ?(condition = [])
    ?timeouts ~feed_id ~feed_output_config () :
    google_cloud_asset_project_feed =
  {
    asset_names;
    asset_types;
    billing_project;
    content_type;
    feed_id;
    id;
    project;
    condition;
    feed_output_config;
    timeouts;
  }

type t = {
  tf_name : string;
  asset_names : string list prop;
  asset_types : string list prop;
  billing_project : string prop;
  content_type : string prop;
  feed_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?asset_names ?asset_types ?billing_project ?content_type ?id
    ?project ?(condition = []) ?timeouts ~feed_id ~feed_output_config
    __id =
  let __type = "google_cloud_asset_project_feed" in
  let __attrs =
    ({
       tf_name = __id;
       asset_names = Prop.computed __type __id "asset_names";
       asset_types = Prop.computed __type __id "asset_types";
       billing_project = Prop.computed __type __id "billing_project";
       content_type = Prop.computed __type __id "content_type";
       feed_id = Prop.computed __type __id "feed_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_asset_project_feed
        (google_cloud_asset_project_feed ?asset_names ?asset_types
           ?billing_project ?content_type ?id ?project ~condition
           ?timeouts ~feed_id ~feed_output_config ());
    attrs = __attrs;
  }

let register ?tf_module ?asset_names ?asset_types ?billing_project
    ?content_type ?id ?project ?(condition = []) ?timeouts ~feed_id
    ~feed_output_config __id =
  let (r : _ Tf_core.resource) =
    make ?asset_names ?asset_types ?billing_project ?content_type ?id
      ?project ~condition ?timeouts ~feed_id ~feed_output_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
