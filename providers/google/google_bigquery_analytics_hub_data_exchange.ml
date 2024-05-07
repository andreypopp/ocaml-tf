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

type google_bigquery_analytics_hub_data_exchange = {
  data_exchange_id : string prop;
  description : string prop option; [@option]
  display_name : string prop;
  documentation : string prop option; [@option]
  icon : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  primary_contact : string prop option; [@option]
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_analytics_hub_data_exchange) -> ()

let yojson_of_google_bigquery_analytics_hub_data_exchange =
  (function
   | {
       data_exchange_id = v_data_exchange_id;
       description = v_description;
       display_name = v_display_name;
       documentation = v_documentation;
       icon = v_icon;
       id = v_id;
       location = v_location;
       primary_contact = v_primary_contact;
       project = v_project;
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
       `Assoc bnds
    : google_bigquery_analytics_hub_data_exchange ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_analytics_hub_data_exchange

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_analytics_hub_data_exchange ?description
    ?documentation ?icon ?id ?primary_contact ?project ?timeouts
    ~data_exchange_id ~display_name ~location () :
    google_bigquery_analytics_hub_data_exchange =
  {
    data_exchange_id;
    description;
    display_name;
    documentation;
    icon;
    id;
    location;
    primary_contact;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  data_exchange_id : string prop;
  description : string prop;
  display_name : string prop;
  documentation : string prop;
  icon : string prop;
  id : string prop;
  listing_count : float prop;
  location : string prop;
  name : string prop;
  primary_contact : string prop;
  project : string prop;
}

let make ?description ?documentation ?icon ?id ?primary_contact
    ?project ?timeouts ~data_exchange_id ~display_name ~location __id
    =
  let __type = "google_bigquery_analytics_hub_data_exchange" in
  let __attrs =
    ({
       tf_name = __id;
       data_exchange_id =
         Prop.computed __type __id "data_exchange_id";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       documentation = Prop.computed __type __id "documentation";
       icon = Prop.computed __type __id "icon";
       id = Prop.computed __type __id "id";
       listing_count = Prop.computed __type __id "listing_count";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_contact = Prop.computed __type __id "primary_contact";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_analytics_hub_data_exchange
        (google_bigquery_analytics_hub_data_exchange ?description
           ?documentation ?icon ?id ?primary_contact ?project
           ?timeouts ~data_exchange_id ~display_name ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?documentation ?icon ?id
    ?primary_contact ?project ?timeouts ~data_exchange_id
    ~display_name ~location __id =
  let (r : _ Tf_core.resource) =
    make ?description ?documentation ?icon ?id ?primary_contact
      ?project ?timeouts ~data_exchange_id ~display_name ~location
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
