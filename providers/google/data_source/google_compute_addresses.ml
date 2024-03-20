(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type addresses = {
  address : string prop;
  address_type : string prop;
  description : string prop;
  name : string prop;
  region : string prop;
  self_link : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addresses) -> ()

let yojson_of_addresses =
  (function
   | {
       address = v_address;
       address_type = v_address_type;
       description = v_description;
       name = v_name;
       region = v_region;
       self_link = v_self_link;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address_type in
         ("address_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : addresses -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addresses

[@@@deriving.end]

type google_compute_addresses = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_addresses) -> ()

let yojson_of_google_compute_addresses =
  (function
   | {
       filter = v_filter;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_addresses -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_addresses

[@@@deriving.end]

let google_compute_addresses ?filter ?id ?project ?region () :
    google_compute_addresses =
  { filter; id; project; region }

type t = {
  addresses : addresses list prop;
  filter : string prop;
  id : string prop;
  project : string prop;
  region : string prop;
}

let make ?filter ?id ?project ?region __id =
  let __type = "google_compute_addresses" in
  let __attrs =
    ({
       addresses = Prop.computed __type __id "addresses";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_addresses
        (google_compute_addresses ?filter ?id ?project ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id ?project ?region __id =
  let (r : _ Tf_core.resource) =
    make ?filter ?id ?project ?region __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
