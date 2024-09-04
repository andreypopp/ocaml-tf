(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allowlisted_certificates = { pem_certificate : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : allowlisted_certificates) -> ()

let yojson_of_allowlisted_certificates =
  (function
   | { pem_certificate = v_pem_certificate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pem_certificate
         in
         ("pem_certificate", arg) :: bnds
       in
       `Assoc bnds
    : allowlisted_certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allowlisted_certificates

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

type trust_stores__intermediate_cas = {
  pem_certificate : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trust_stores__intermediate_cas) -> ()

let yojson_of_trust_stores__intermediate_cas =
  (function
   | { pem_certificate = v_pem_certificate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pem_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pem_certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trust_stores__intermediate_cas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trust_stores__intermediate_cas

[@@@deriving.end]

type trust_stores__trust_anchors = {
  pem_certificate : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trust_stores__trust_anchors) -> ()

let yojson_of_trust_stores__trust_anchors =
  (function
   | { pem_certificate = v_pem_certificate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pem_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pem_certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trust_stores__trust_anchors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trust_stores__trust_anchors

[@@@deriving.end]

type trust_stores = {
  intermediate_cas : trust_stores__intermediate_cas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trust_anchors : trust_stores__trust_anchors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trust_stores) -> ()

let yojson_of_trust_stores =
  (function
   | {
       intermediate_cas = v_intermediate_cas;
       trust_anchors = v_trust_anchors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_trust_anchors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trust_stores__trust_anchors)
               v_trust_anchors
           in
           let bnd = "trust_anchors", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_intermediate_cas then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trust_stores__intermediate_cas)
               v_intermediate_cas
           in
           let bnd = "intermediate_cas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : trust_stores -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trust_stores

[@@@deriving.end]

type google_certificate_manager_trust_config = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  allowlisted_certificates : allowlisted_certificates list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  trust_stores : trust_stores list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_certificate_manager_trust_config) -> ()

let yojson_of_google_certificate_manager_trust_config =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       allowlisted_certificates = v_allowlisted_certificates;
       timeouts = v_timeouts;
       trust_stores = v_trust_stores;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_trust_stores then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trust_stores) v_trust_stores
           in
           let bnd = "trust_stores", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowlisted_certificates then bnds
         else
           let arg =
             (yojson_of_list yojson_of_allowlisted_certificates)
               v_allowlisted_certificates
           in
           let bnd = "allowlisted_certificates", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_certificate_manager_trust_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_certificate_manager_trust_config

[@@@deriving.end]

let allowlisted_certificates ~pem_certificate () :
    allowlisted_certificates =
  { pem_certificate }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let trust_stores__intermediate_cas ?pem_certificate () :
    trust_stores__intermediate_cas =
  { pem_certificate }

let trust_stores__trust_anchors ?pem_certificate () :
    trust_stores__trust_anchors =
  { pem_certificate }

let trust_stores ?(intermediate_cas = []) ?(trust_anchors = []) () :
    trust_stores =
  { intermediate_cas; trust_anchors }

let google_certificate_manager_trust_config ?description ?id ?labels
    ?project ?(allowlisted_certificates = []) ?timeouts
    ?(trust_stores = []) ~location ~name () :
    google_certificate_manager_trust_config =
  {
    description;
    id;
    labels;
    location;
    name;
    project;
    allowlisted_certificates;
    timeouts;
    trust_stores;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project
    ?(allowlisted_certificates = []) ?timeouts ?(trust_stores = [])
    ~location ~name __id =
  let __type = "google_certificate_manager_trust_config" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
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
      yojson_of_google_certificate_manager_trust_config
        (google_certificate_manager_trust_config ?description ?id
           ?labels ?project ~allowlisted_certificates ?timeouts
           ~trust_stores ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project
    ?(allowlisted_certificates = []) ?timeouts ?(trust_stores = [])
    ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ~allowlisted_certificates
      ?timeouts ~trust_stores ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
