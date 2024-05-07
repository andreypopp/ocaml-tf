(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_dataset = { dataset : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_dataset) -> ()

let yojson_of_bigquery_dataset =
  (function
   | { dataset = v_dataset } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       `Assoc bnds
    : bigquery_dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_dataset

[@@@deriving.end]

type data_provider = {
  name : string prop;
  primary_contact : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_provider) -> ()

let yojson_of_data_provider =
  (function
   | { name = v_name; primary_contact = v_primary_contact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_contact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_contact", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : data_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_provider

[@@@deriving.end]

type publisher = {
  name : string prop;
  primary_contact : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : publisher) -> ()

let yojson_of_publisher =
  (function
   | { name = v_name; primary_contact = v_primary_contact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_contact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_contact", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : publisher -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_publisher

[@@@deriving.end]

type restricted_export_config = {
  enabled : bool prop option; [@option]
  restrict_query_result : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restricted_export_config) -> ()

let yojson_of_restricted_export_config =
  (function
   | {
       enabled = v_enabled;
       restrict_query_result = v_restrict_query_result;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_restrict_query_result with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "restrict_query_result", arg in
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
       `Assoc bnds
    : restricted_export_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restricted_export_config

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

type google_bigquery_analytics_hub_listing = {
  categories : string prop list option; [@option]
  data_exchange_id : string prop;
  description : string prop option; [@option]
  display_name : string prop;
  documentation : string prop option; [@option]
  icon : string prop option; [@option]
  id : string prop option; [@option]
  listing_id : string prop;
  location : string prop;
  primary_contact : string prop option; [@option]
  project : string prop option; [@option]
  request_access : string prop option; [@option]
  bigquery_dataset : bigquery_dataset list;
  data_provider : data_provider list;
  publisher : publisher list;
  restricted_export_config : restricted_export_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_analytics_hub_listing) -> ()

let yojson_of_google_bigquery_analytics_hub_listing =
  (function
   | {
       categories = v_categories;
       data_exchange_id = v_data_exchange_id;
       description = v_description;
       display_name = v_display_name;
       documentation = v_documentation;
       icon = v_icon;
       id = v_id;
       listing_id = v_listing_id;
       location = v_location;
       primary_contact = v_primary_contact;
       project = v_project;
       request_access = v_request_access;
       bigquery_dataset = v_bigquery_dataset;
       data_provider = v_data_provider;
       publisher = v_publisher;
       restricted_export_config = v_restricted_export_config;
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
           yojson_of_list yojson_of_restricted_export_config
             v_restricted_export_config
         in
         ("restricted_export_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_publisher v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_provider v_data_provider
         in
         ("data_provider", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bigquery_dataset
             v_bigquery_dataset
         in
         ("bigquery_dataset", arg) :: bnds
       in
       let bnds =
         match v_request_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_access", arg in
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
         match v_primary_contact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_contact", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_listing_id in
         ("listing_id", arg) :: bnds
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
         match v_icon with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "icon", arg in
             bnd :: bnds
       in
       let bnds =
         match v_documentation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "documentation", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_exchange_id
         in
         ("data_exchange_id", arg) :: bnds
       in
       let bnds =
         match v_categories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "categories", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigquery_analytics_hub_listing ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_analytics_hub_listing

[@@@deriving.end]

let bigquery_dataset ~dataset () : bigquery_dataset = { dataset }

let data_provider ?primary_contact ~name () : data_provider =
  { name; primary_contact }

let publisher ?primary_contact ~name () : publisher =
  { name; primary_contact }

let restricted_export_config ?enabled ?restrict_query_result () :
    restricted_export_config =
  { enabled; restrict_query_result }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_analytics_hub_listing ?categories ?description
    ?documentation ?icon ?id ?primary_contact ?project
    ?request_access ?(data_provider = []) ?(publisher = [])
    ?(restricted_export_config = []) ?timeouts ~data_exchange_id
    ~display_name ~listing_id ~location ~bigquery_dataset () :
    google_bigquery_analytics_hub_listing =
  {
    categories;
    data_exchange_id;
    description;
    display_name;
    documentation;
    icon;
    id;
    listing_id;
    location;
    primary_contact;
    project;
    request_access;
    bigquery_dataset;
    data_provider;
    publisher;
    restricted_export_config;
    timeouts;
  }

type t = {
  tf_name : string;
  categories : string list prop;
  data_exchange_id : string prop;
  description : string prop;
  display_name : string prop;
  documentation : string prop;
  icon : string prop;
  id : string prop;
  listing_id : string prop;
  location : string prop;
  name : string prop;
  primary_contact : string prop;
  project : string prop;
  request_access : string prop;
}

let make ?categories ?description ?documentation ?icon ?id
    ?primary_contact ?project ?request_access ?(data_provider = [])
    ?(publisher = []) ?(restricted_export_config = []) ?timeouts
    ~data_exchange_id ~display_name ~listing_id ~location
    ~bigquery_dataset __id =
  let __type = "google_bigquery_analytics_hub_listing" in
  let __attrs =
    ({
       tf_name = __id;
       categories = Prop.computed __type __id "categories";
       data_exchange_id =
         Prop.computed __type __id "data_exchange_id";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       documentation = Prop.computed __type __id "documentation";
       icon = Prop.computed __type __id "icon";
       id = Prop.computed __type __id "id";
       listing_id = Prop.computed __type __id "listing_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_contact = Prop.computed __type __id "primary_contact";
       project = Prop.computed __type __id "project";
       request_access = Prop.computed __type __id "request_access";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_analytics_hub_listing
        (google_bigquery_analytics_hub_listing ?categories
           ?description ?documentation ?icon ?id ?primary_contact
           ?project ?request_access ~data_provider ~publisher
           ~restricted_export_config ?timeouts ~data_exchange_id
           ~display_name ~listing_id ~location ~bigquery_dataset ());
    attrs = __attrs;
  }

let register ?tf_module ?categories ?description ?documentation ?icon
    ?id ?primary_contact ?project ?request_access
    ?(data_provider = []) ?(publisher = [])
    ?(restricted_export_config = []) ?timeouts ~data_exchange_id
    ~display_name ~listing_id ~location ~bigquery_dataset __id =
  let (r : _ Tf_core.resource) =
    make ?categories ?description ?documentation ?icon ?id
      ?primary_contact ?project ?request_access ~data_provider
      ~publisher ~restricted_export_config ?timeouts
      ~data_exchange_id ~display_name ~listing_id ~location
      ~bigquery_dataset __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
