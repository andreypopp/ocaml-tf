(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ingress_from__sources = {
  access_level : string prop option; [@option]
  resource : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_from__sources) -> ()

let yojson_of_ingress_from__sources =
  (function
   | { access_level = v_access_level; resource = v_resource } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource", arg in
             bnd :: bnds
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
    : ingress_from__sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_from__sources

[@@@deriving.end]

type ingress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  sources : ingress_from__sources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_from) -> ()

let yojson_of_ingress_from =
  (function
   | {
       identities = v_identities;
       identity_type = v_identity_type;
       sources = v_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ingress_from__sources)
               v_sources
           in
           let bnd = "sources", arg in
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
    : ingress_from -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_from

[@@@deriving.end]

type ingress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_to__operations__method_selectors) -> ()

let yojson_of_ingress_to__operations__method_selectors =
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
    : ingress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_to__operations__method_selectors

[@@@deriving.end]

type ingress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors : ingress_to__operations__method_selectors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_to__operations) -> ()

let yojson_of_ingress_to__operations =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_method_selectors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ingress_to__operations__method_selectors)
               v_method_selectors
           in
           let bnd = "method_selectors", arg in
           bnd :: bnds
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
    : ingress_to__operations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_to__operations

[@@@deriving.end]

type ingress_to = {
  resources : string prop list option; [@option]
  operations : ingress_to__operations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_to) -> ()

let yojson_of_ingress_to =
  (function
   | { resources = v_resources; operations = v_operations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_operations then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ingress_to__operations)
               v_operations
           in
           let bnd = "operations", arg in
           bnd :: bnds
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
       `Assoc bnds
    : ingress_to -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_to

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

type google_access_context_manager_service_perimeter_ingress_policy = {
  id : string prop option; [@option]
  perimeter : string prop;
  ingress_from : ingress_from list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ingress_to : ingress_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       google_access_context_manager_service_perimeter_ingress_policy) ->
  ()

let yojson_of_google_access_context_manager_service_perimeter_ingress_policy
    =
  (function
   | {
       id = v_id;
       perimeter = v_perimeter;
       ingress_from = v_ingress_from;
       ingress_to = v_ingress_to;
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
         if Stdlib.( = ) [] v_ingress_to then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ingress_to) v_ingress_to
           in
           let bnd = "ingress_to", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ingress_from then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ingress_from) v_ingress_from
           in
           let bnd = "ingress_from", arg in
           bnd :: bnds
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
    : google_access_context_manager_service_perimeter_ingress_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_access_context_manager_service_perimeter_ingress_policy

[@@@deriving.end]

let ingress_from__sources ?access_level ?resource () :
    ingress_from__sources =
  { access_level; resource }

let ingress_from ?identities ?identity_type ?(sources = []) () :
    ingress_from =
  { identities; identity_type; sources }

let ingress_to__operations__method_selectors ?method_ ?permission ()
    : ingress_to__operations__method_selectors =
  { method_; permission }

let ingress_to__operations ?service_name ?(method_selectors = []) ()
    : ingress_to__operations =
  { service_name; method_selectors }

let ingress_to ?resources ?(operations = []) () : ingress_to =
  { resources; operations }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_service_perimeter_ingress_policy
    ?id ?(ingress_from = []) ?(ingress_to = []) ?timeouts ~perimeter
    () :
    google_access_context_manager_service_perimeter_ingress_policy =
  { id; perimeter; ingress_from; ingress_to; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  perimeter : string prop;
}

let make ?id ?(ingress_from = []) ?(ingress_to = []) ?timeouts
    ~perimeter __id =
  let __type =
    "google_access_context_manager_service_perimeter_ingress_policy"
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
      yojson_of_google_access_context_manager_service_perimeter_ingress_policy
        (google_access_context_manager_service_perimeter_ingress_policy
           ?id ~ingress_from ~ingress_to ?timeouts ~perimeter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(ingress_from = []) ?(ingress_to = [])
    ?timeouts ~perimeter __id =
  let (r : _ Tf_core.resource) =
    make ?id ~ingress_from ~ingress_to ?timeouts ~perimeter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
