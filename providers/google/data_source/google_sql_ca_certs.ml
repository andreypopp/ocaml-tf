(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certs = {
  cert : string prop;
  common_name : string prop;
  create_time : string prop;
  expiration_time : string prop;
  sha1_fingerprint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certs) -> ()

let yojson_of_certs =
  (function
   | {
       cert = v_cert;
       common_name = v_common_name;
       create_time = v_create_time;
       expiration_time = v_expiration_time;
       sha1_fingerprint = v_sha1_fingerprint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sha1_fingerprint
         in
         ("sha1_fingerprint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_time
         in
         ("expiration_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_common_name in
         ("common_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cert in
         ("cert", arg) :: bnds
       in
       `Assoc bnds
    : certs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certs

[@@@deriving.end]

type google_sql_ca_certs = {
  id : string prop option; [@option]
  instance : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_ca_certs) -> ()

let yojson_of_google_sql_ca_certs =
  (function
   | { id = v_id; instance = v_instance; project = v_project } ->
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
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
    : google_sql_ca_certs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_ca_certs

[@@@deriving.end]

let google_sql_ca_certs ?id ?project ~instance () :
    google_sql_ca_certs =
  { id; instance; project }

type t = {
  active_version : string prop;
  certs : certs list prop;
  id : string prop;
  instance : string prop;
  project : string prop;
}

let make ?id ?project ~instance __id =
  let __type = "google_sql_ca_certs" in
  let __attrs =
    ({
       active_version = Prop.computed __type __id "active_version";
       certs = Prop.computed __type __id "certs";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_ca_certs
        (google_sql_ca_certs ?id ?project ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~instance __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~instance __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
