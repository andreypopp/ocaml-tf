(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_networks = {
  id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_networks) -> ()

let yojson_of_google_compute_networks =
  (function
   | { id = v_id; project = v_project } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_networks

[@@@deriving.end]

let google_compute_networks ?id ?project () : google_compute_networks
    =
  { id; project }

type t = {
  tf_name : string;
  id : string prop;
  networks : string list prop;
  project : string prop;
  self_link : string prop;
}

let make ?id ?project __id =
  let __type = "google_compute_networks" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       networks = Prop.computed __type __id "networks";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_networks
        (google_compute_networks ?id ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project __id =
  let (r : _ Tf_core.resource) = make ?id ?project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
