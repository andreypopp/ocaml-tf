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

type google_certificate_manager_certificate_map_entry = {
  certificates : string prop list;
  description : string prop option; [@option]
  hostname : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  map : string prop;
  matcher : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_certificate_manager_certificate_map_entry) -> ()

let yojson_of_google_certificate_manager_certificate_map_entry =
  (function
   | {
       certificates = v_certificates;
       description = v_description;
       hostname = v_hostname;
       id = v_id;
       labels = v_labels;
       map = v_map;
       matcher = v_matcher;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_matcher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "matcher", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_map in
         ("map", arg) :: bnds
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
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_certificates
         in
         ("certificates", arg) :: bnds
       in
       `Assoc bnds
    : google_certificate_manager_certificate_map_entry ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_certificate_manager_certificate_map_entry

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_certificate_manager_certificate_map_entry ?description
    ?hostname ?id ?labels ?matcher ?project ?timeouts ~certificates
    ~map ~name () : google_certificate_manager_certificate_map_entry
    =
  {
    certificates;
    description;
    hostname;
    id;
    labels;
    map;
    matcher;
    name;
    project;
    timeouts;
  }

type t = {
  certificates : string list prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  hostname : string prop;
  id : string prop;
  labels : (string * string) list prop;
  map : string prop;
  matcher : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?hostname ?id ?labels ?matcher ?project
    ?timeouts ~certificates ~map ~name __id =
  let __type = "google_certificate_manager_certificate_map_entry" in
  let __attrs =
    ({
       certificates = Prop.computed __type __id "certificates";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       map = Prop.computed __type __id "map";
       matcher = Prop.computed __type __id "matcher";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
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
      yojson_of_google_certificate_manager_certificate_map_entry
        (google_certificate_manager_certificate_map_entry
           ?description ?hostname ?id ?labels ?matcher ?project
           ?timeouts ~certificates ~map ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?hostname ?id ?labels ?matcher
    ?project ?timeouts ~certificates ~map ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?hostname ?id ?labels ?matcher ?project
      ?timeouts ~certificates ~map ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
