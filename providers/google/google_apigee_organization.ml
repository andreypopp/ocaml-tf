(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type properties__property = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : properties__property) -> ()

let yojson_of_properties__property =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : properties__property -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_properties__property

[@@@deriving.end]

type properties = { property : properties__property list }
[@@deriving_inline yojson_of]

let _ = fun (_ : properties) -> ()

let yojson_of_properties =
  (function
   | { property = v_property } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_properties__property v_property
         in
         ("property", arg) :: bnds
       in
       `Assoc bnds
    : properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_properties

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

type google_apigee_organization = {
  analytics_region : string prop option; [@option]
  authorized_network : string prop option; [@option]
  billing_type : string prop option; [@option]
  description : string prop option; [@option]
  disable_vpc_peering : bool prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  project_id : string prop;
  retention : string prop option; [@option]
  runtime_database_encryption_key_name : string prop option;
      [@option]
  runtime_type : string prop option; [@option]
  properties : properties list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_organization) -> ()

let yojson_of_google_apigee_organization =
  (function
   | {
       analytics_region = v_analytics_region;
       authorized_network = v_authorized_network;
       billing_type = v_billing_type;
       description = v_description;
       disable_vpc_peering = v_disable_vpc_peering;
       display_name = v_display_name;
       id = v_id;
       project_id = v_project_id;
       retention = v_retention;
       runtime_database_encryption_key_name =
         v_runtime_database_encryption_key_name;
       runtime_type = v_runtime_type;
       properties = v_properties;
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
           yojson_of_list yojson_of_properties v_properties
         in
         ("properties", arg) :: bnds
       in
       let bnds =
         match v_runtime_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_database_encryption_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_database_encryption_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
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
         match v_disable_vpc_peering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_vpc_peering", arg in
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
         match v_billing_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorized_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorized_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_analytics_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "analytics_region", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_apigee_organization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_organization

[@@@deriving.end]

let properties__property ?name ?value () : properties__property =
  { name; value }

let properties ?(property = []) () : properties = { property }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_organization ?analytics_region ?authorized_network
    ?billing_type ?description ?disable_vpc_peering ?display_name ?id
    ?retention ?runtime_database_encryption_key_name ?runtime_type
    ?(properties = []) ?timeouts ~project_id () :
    google_apigee_organization =
  {
    analytics_region;
    authorized_network;
    billing_type;
    description;
    disable_vpc_peering;
    display_name;
    id;
    project_id;
    retention;
    runtime_database_encryption_key_name;
    runtime_type;
    properties;
    timeouts;
  }

type t = {
  analytics_region : string prop;
  apigee_project_id : string prop;
  authorized_network : string prop;
  billing_type : string prop;
  ca_certificate : string prop;
  description : string prop;
  disable_vpc_peering : bool prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project_id : string prop;
  retention : string prop;
  runtime_database_encryption_key_name : string prop;
  runtime_type : string prop;
  subscription_type : string prop;
}

let make ?analytics_region ?authorized_network ?billing_type
    ?description ?disable_vpc_peering ?display_name ?id ?retention
    ?runtime_database_encryption_key_name ?runtime_type
    ?(properties = []) ?timeouts ~project_id __id =
  let __type = "google_apigee_organization" in
  let __attrs =
    ({
       analytics_region =
         Prop.computed __type __id "analytics_region";
       apigee_project_id =
         Prop.computed __type __id "apigee_project_id";
       authorized_network =
         Prop.computed __type __id "authorized_network";
       billing_type = Prop.computed __type __id "billing_type";
       ca_certificate = Prop.computed __type __id "ca_certificate";
       description = Prop.computed __type __id "description";
       disable_vpc_peering =
         Prop.computed __type __id "disable_vpc_peering";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project_id = Prop.computed __type __id "project_id";
       retention = Prop.computed __type __id "retention";
       runtime_database_encryption_key_name =
         Prop.computed __type __id
           "runtime_database_encryption_key_name";
       runtime_type = Prop.computed __type __id "runtime_type";
       subscription_type =
         Prop.computed __type __id "subscription_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_organization
        (google_apigee_organization ?analytics_region
           ?authorized_network ?billing_type ?description
           ?disable_vpc_peering ?display_name ?id ?retention
           ?runtime_database_encryption_key_name ?runtime_type
           ~properties ?timeouts ~project_id ());
    attrs = __attrs;
  }

let register ?tf_module ?analytics_region ?authorized_network
    ?billing_type ?description ?disable_vpc_peering ?display_name ?id
    ?retention ?runtime_database_encryption_key_name ?runtime_type
    ?(properties = []) ?timeouts ~project_id __id =
  let (r : _ Tf_core.resource) =
    make ?analytics_region ?authorized_network ?billing_type
      ?description ?disable_vpc_peering ?display_name ?id ?retention
      ?runtime_database_encryption_key_name ?runtime_type ~properties
      ?timeouts ~project_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
