(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_network = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_network) -> ()

let yojson_of_google_compute_network =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
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
    : google_compute_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_network

[@@@deriving.end]

let google_compute_network ?id ?project ~name () :
    google_compute_network =
  { id; name; project }

type t = {
  description : string prop;
  gateway_ipv4 : string prop;
  id : string prop;
  internal_ipv6_range : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  subnetworks_self_links : string list prop;
}

let make ?id ?project ~name __id =
  let __type = "google_compute_network" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       gateway_ipv4 = Prop.computed __type __id "gateway_ipv4";
       id = Prop.computed __type __id "id";
       internal_ipv6_range =
         Prop.computed __type __id "internal_ipv6_range";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       subnetworks_self_links =
         Prop.computed __type __id "subnetworks_self_links";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network
        (google_compute_network ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
