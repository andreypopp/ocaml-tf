(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_config__custom_output__properties__value_expression = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : custom_config__custom_output__properties__value_expression) ->
  ()

let yojson_of_custom_config__custom_output__properties__value_expression
    =
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
    : custom_config__custom_output__properties__value_expression ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_config__custom_output__properties__value_expression

[@@@deriving.end]

type custom_config__custom_output__properties = {
  name : string prop option; [@option]
  value_expression :
    custom_config__custom_output__properties__value_expression list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_config__custom_output__properties) -> ()

let yojson_of_custom_config__custom_output__properties =
  (function
   | { name = v_name; value_expression = v_value_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_value_expression then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_config__custom_output__properties__value_expression)
               v_value_expression
           in
           let bnd = "value_expression", arg in
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
    : custom_config__custom_output__properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_config__custom_output__properties

[@@@deriving.end]

type custom_config__custom_output = {
  properties : custom_config__custom_output__properties list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_config__custom_output) -> ()

let yojson_of_custom_config__custom_output =
  (function
   | { properties = v_properties } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_properties then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_config__custom_output__properties)
               v_properties
           in
           let bnd = "properties", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : custom_config__custom_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_config__custom_output

[@@@deriving.end]

type custom_config__predicate = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_config__predicate) -> ()

let yojson_of_custom_config__predicate =
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
    : custom_config__predicate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_config__predicate

[@@@deriving.end]

type custom_config__resource_selector = {
  resource_types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_config__resource_selector) -> ()

let yojson_of_custom_config__resource_selector =
  (function
   | { resource_types = v_resource_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_resource_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_resource_types
           in
           let bnd = "resource_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : custom_config__resource_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_config__resource_selector

[@@@deriving.end]

type custom_config = {
  description : string prop option; [@option]
  recommendation : string prop;
  severity : string prop;
  custom_output : custom_config__custom_output list;
      [@default []] [@yojson_drop_default ( = )]
  predicate : custom_config__predicate list;
      [@default []] [@yojson_drop_default ( = )]
  resource_selector : custom_config__resource_selector list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_config) -> ()

let yojson_of_custom_config =
  (function
   | {
       description = v_description;
       recommendation = v_recommendation;
       severity = v_severity;
       custom_output = v_custom_output;
       predicate = v_predicate;
       resource_selector = v_resource_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_resource_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_config__resource_selector)
               v_resource_selector
           in
           let bnd = "resource_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_predicate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_config__predicate)
               v_predicate
           in
           let bnd = "predicate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_custom_output then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_config__custom_output)
               v_custom_output
           in
           let bnd = "custom_output", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recommendation
         in
         ("recommendation", arg) :: bnds
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
    : custom_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_config

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

type google_scc_organization_custom_module = {
  display_name : string prop;
  enablement_state : string prop;
  id : string prop option; [@option]
  organization : string prop;
  custom_config : custom_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_scc_organization_custom_module) -> ()

let yojson_of_google_scc_organization_custom_module =
  (function
   | {
       display_name = v_display_name;
       enablement_state = v_enablement_state;
       id = v_id;
       organization = v_organization;
       custom_config = v_custom_config;
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
         if [] = v_custom_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_config) v_custom_config
           in
           let bnd = "custom_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_enablement_state
         in
         ("enablement_state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : google_scc_organization_custom_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_scc_organization_custom_module

[@@@deriving.end]

let custom_config__custom_output__properties__value_expression
    ?description ?location ?title ~expression () :
    custom_config__custom_output__properties__value_expression =
  { description; expression; location; title }

let custom_config__custom_output__properties ?name
    ?(value_expression = []) () :
    custom_config__custom_output__properties =
  { name; value_expression }

let custom_config__custom_output ?(properties = []) () :
    custom_config__custom_output =
  { properties }

let custom_config__predicate ?description ?location ?title
    ~expression () : custom_config__predicate =
  { description; expression; location; title }

let custom_config__resource_selector ~resource_types () :
    custom_config__resource_selector =
  { resource_types }

let custom_config ?description ?(custom_output = []) ~recommendation
    ~severity ~predicate ~resource_selector () : custom_config =
  {
    description;
    recommendation;
    severity;
    custom_output;
    predicate;
    resource_selector;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_scc_organization_custom_module ?id ?timeouts ~display_name
    ~enablement_state ~organization ~custom_config () :
    google_scc_organization_custom_module =
  {
    display_name;
    enablement_state;
    id;
    organization;
    custom_config;
    timeouts;
  }

type t = {
  tf_name : string;
  ancestor_module : string prop;
  display_name : string prop;
  enablement_state : string prop;
  id : string prop;
  last_editor : string prop;
  name : string prop;
  organization : string prop;
  update_time : string prop;
}

let make ?id ?timeouts ~display_name ~enablement_state ~organization
    ~custom_config __id =
  let __type = "google_scc_organization_custom_module" in
  let __attrs =
    ({
       tf_name = __id;
       ancestor_module = Prop.computed __type __id "ancestor_module";
       display_name = Prop.computed __type __id "display_name";
       enablement_state =
         Prop.computed __type __id "enablement_state";
       id = Prop.computed __type __id "id";
       last_editor = Prop.computed __type __id "last_editor";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_organization_custom_module
        (google_scc_organization_custom_module ?id ?timeouts
           ~display_name ~enablement_state ~organization
           ~custom_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~display_name ~enablement_state
    ~organization ~custom_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~display_name ~enablement_state ~organization
      ~custom_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
