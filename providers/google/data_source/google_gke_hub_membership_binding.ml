(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type state = { code : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : state) -> ()

let yojson_of_state =
  (function
   | { code = v_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_state

[@@@deriving.end]

type google_gke_hub_membership_binding = {
  id : string prop option; [@option]
  location : string prop;
  membership_binding_id : string prop;
  membership_id : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_hub_membership_binding) -> ()

let yojson_of_google_gke_hub_membership_binding =
  (function
   | {
       id = v_id;
       location = v_location;
       membership_binding_id = v_membership_binding_id;
       membership_id = v_membership_id;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_membership_id in
         ("membership_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_membership_binding_id
         in
         ("membership_binding_id", arg) :: bnds
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
       `Assoc bnds
    : google_gke_hub_membership_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_hub_membership_binding

[@@@deriving.end]

let google_gke_hub_membership_binding ?id ?project ~location
    ~membership_binding_id ~membership_id () :
    google_gke_hub_membership_binding =
  { id; location; membership_binding_id; membership_id; project }

type t = {
  tf_name : string;
  create_time : string prop;
  delete_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  membership_binding_id : string prop;
  membership_id : string prop;
  name : string prop;
  project : string prop;
  scope : string prop;
  state : state list prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

let make ?id ?project ~location ~membership_binding_id ~membership_id
    __id =
  let __type = "google_gke_hub_membership_binding" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       membership_binding_id =
         Prop.computed __type __id "membership_binding_id";
       membership_id = Prop.computed __type __id "membership_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       scope = Prop.computed __type __id "scope";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_membership_binding
        (google_gke_hub_membership_binding ?id ?project ~location
           ~membership_binding_id ~membership_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~membership_binding_id
    ~membership_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~membership_binding_id ~membership_id
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
