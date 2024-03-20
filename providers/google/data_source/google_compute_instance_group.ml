(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type named_port = { name : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : named_port) -> ()

let yojson_of_named_port =
  (function
   | { name = v_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : named_port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_named_port

[@@@deriving.end]

type google_compute_instance_group = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  self_link : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_instance_group) -> ()

let yojson_of_google_compute_instance_group =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       self_link = v_self_link;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_self_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "self_link", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : google_compute_instance_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_instance_group

[@@@deriving.end]

let google_compute_instance_group ?id ?name ?project ?self_link ?zone
    () : google_compute_instance_group =
  { id; name; project; self_link; zone }

type t = {
  description : string prop;
  id : string prop;
  instances : string list prop;
  name : string prop;
  named_port : named_port list prop;
  network : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  zone : string prop;
}

let make ?id ?name ?project ?self_link ?zone __id =
  let __type = "google_compute_instance_group" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       name = Prop.computed __type __id "name";
       named_port = Prop.computed __type __id "named_port";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_group
        (google_compute_instance_group ?id ?name ?project ?self_link
           ?zone ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?self_link ?zone __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?self_link ?zone __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
