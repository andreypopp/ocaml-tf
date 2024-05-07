(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_address = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_address) -> ()

let yojson_of_google_compute_address =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_address

[@@@deriving.end]

let google_compute_address ?id ?project ?region ~name () :
    google_compute_address =
  { id; name; project; region }

type t = {
  tf_name : string;
  address : string prop;
  address_type : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  network_tier : string prop;
  prefix_length : float prop;
  project : string prop;
  purpose : string prop;
  region : string prop;
  self_link : string prop;
  status : string prop;
  subnetwork : string prop;
  users : string prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_compute_address" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       address_type = Prop.computed __type __id "address_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_tier = Prop.computed __type __id "network_tier";
       prefix_length = Prop.computed __type __id "prefix_length";
       project = Prop.computed __type __id "project";
       purpose = Prop.computed __type __id "purpose";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       status = Prop.computed __type __id "status";
       subnetwork = Prop.computed __type __id "subnetwork";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_address
        (google_compute_address ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
