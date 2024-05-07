(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_ssl_policy = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_ssl_policy) -> ()

let yojson_of_google_compute_ssl_policy =
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
    : google_compute_ssl_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_ssl_policy

[@@@deriving.end]

let google_compute_ssl_policy ?id ?project ~name () :
    google_compute_ssl_policy =
  { id; name; project }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  custom_features : string list prop;
  description : string prop;
  enabled_features : string list prop;
  fingerprint : string prop;
  id : string prop;
  min_tls_version : string prop;
  name : string prop;
  profile : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?id ?project ~name __id =
  let __type = "google_compute_ssl_policy" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       custom_features = Prop.computed __type __id "custom_features";
       description = Prop.computed __type __id "description";
       enabled_features =
         Prop.computed __type __id "enabled_features";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       min_tls_version = Prop.computed __type __id "min_tls_version";
       name = Prop.computed __type __id "name";
       profile = Prop.computed __type __id "profile";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_ssl_policy
        (google_compute_ssl_policy ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
