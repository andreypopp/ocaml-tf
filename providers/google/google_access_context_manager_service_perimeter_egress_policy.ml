(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type egress_from__sources = {
  access_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : egress_from__sources) -> ()

let yojson_of_egress_from__sources =
  (function
   | { access_level = v_access_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_access_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : egress_from__sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_egress_from__sources

[@@@deriving.end]

type egress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  source_restriction : string prop option; [@option]
  sources : egress_from__sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : egress_from) -> ()

let yojson_of_egress_from =
  (function
   | {
       identities = v_identities;
       identity_type = v_identity_type;
       source_restriction = v_source_restriction;
       sources = v_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_egress_from__sources v_sources
         in
         ("sources", arg) :: bnds
       in
       let bnds =
         match v_source_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : egress_from -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_egress_from

[@@@deriving.end]

type egress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : egress_to__operations__method_selectors) -> ()

let yojson_of_egress_to__operations__method_selectors =
  (function
   | { method_ = v_method_; permission = v_permission } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : egress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_egress_to__operations__method_selectors

[@@@deriving.end]

type egress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors : egress_to__operations__method_selectors list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : egress_to__operations) -> ()

let yojson_of_egress_to__operations =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_egress_to__operations__method_selectors
             v_method_selectors
         in
         ("method_selectors", arg) :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : egress_to__operations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_egress_to__operations

[@@@deriving.end]

type egress_to = {
  external_resources : string prop list option; [@option]
  resources : string prop list option; [@option]
  operations : egress_to__operations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : egress_to) -> ()

let yojson_of_egress_to =
  (function
   | {
       external_resources = v_external_resources;
       resources = v_resources;
       operations = v_operations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_egress_to__operations
             v_operations
         in
         ("operations", arg) :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_resources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : egress_to -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_egress_to

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

type google_access_context_manager_service_perimeter_egress_policy = {
  id : string prop option; [@option]
  perimeter : string prop;
  egress_from : egress_from list;
  egress_to : egress_to list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       google_access_context_manager_service_perimeter_egress_policy) ->
  ()

let yojson_of_google_access_context_manager_service_perimeter_egress_policy
    =
  (function
   | {
       id = v_id;
       perimeter = v_perimeter;
       egress_from = v_egress_from;
       egress_to = v_egress_to;
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
         let arg = yojson_of_list yojson_of_egress_to v_egress_to in
         ("egress_to", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_egress_from v_egress_from
         in
         ("egress_from", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_perimeter in
         ("perimeter", arg) :: bnds
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
    : google_access_context_manager_service_perimeter_egress_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_access_context_manager_service_perimeter_egress_policy

[@@@deriving.end]

let egress_from__sources ?access_level () : egress_from__sources =
  { access_level }

let egress_from ?identities ?identity_type ?source_restriction
    ?(sources = []) () : egress_from =
  { identities; identity_type; source_restriction; sources }

let egress_to__operations__method_selectors ?method_ ?permission () :
    egress_to__operations__method_selectors =
  { method_; permission }

let egress_to__operations ?service_name ?(method_selectors = []) () :
    egress_to__operations =
  { service_name; method_selectors }

let egress_to ?external_resources ?resources ?(operations = []) () :
    egress_to =
  { external_resources; resources; operations }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_service_perimeter_egress_policy ?id
    ?(egress_from = []) ?(egress_to = []) ?timeouts ~perimeter () :
    google_access_context_manager_service_perimeter_egress_policy =
  { id; perimeter; egress_from; egress_to; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  perimeter : string prop;
}

let make ?id ?(egress_from = []) ?(egress_to = []) ?timeouts
    ~perimeter __id =
  let __type =
    "google_access_context_manager_service_perimeter_egress_policy"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       perimeter = Prop.computed __type __id "perimeter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_service_perimeter_egress_policy
        (google_access_context_manager_service_perimeter_egress_policy
           ?id ~egress_from ~egress_to ?timeouts ~perimeter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(egress_from = []) ?(egress_to = [])
    ?timeouts ~perimeter __id =
  let (r : _ Tf_core.resource) =
    make ?id ~egress_from ~egress_to ?timeouts ~perimeter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
