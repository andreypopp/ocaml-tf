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
  trust_anchors : trust_stores__trust_anchors list;
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
         let arg =
           yojson_of_list yojson_of_trust_stores__trust_anchors
             v_trust_anchors
         in
         ("trust_anchors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_trust_stores__intermediate_cas
             v_intermediate_cas
         in
         ("intermediate_cas", arg) :: bnds
       in
       `Assoc bnds
    : trust_stores -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trust_stores

[@@@deriving.end]

type google_certificate_manager_trust_config = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
  trust_stores : trust_stores list;
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
       timeouts = v_timeouts;
       trust_stores = v_trust_stores;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_trust_stores v_trust_stores
         in
         ("trust_stores", arg) :: bnds
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
    ?project ?timeouts ?(trust_stores = []) ~location ~name () :
    google_certificate_manager_trust_config =
  {
    description;
    id;
    labels;
    location;
    name;
    project;
    timeouts;
    trust_stores;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?timeouts
    ?(trust_stores = []) ~location ~name __id =
  let __type = "google_certificate_manager_trust_config" in
  let __attrs =
    ({
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
           ?labels ?project ?timeouts ~trust_stores ~location ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ?(trust_stores = []) ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~trust_stores
      ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
