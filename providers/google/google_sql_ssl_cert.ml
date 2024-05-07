(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_sql_ssl_cert = {
  common_name : string prop;
  id : string prop option; [@option]
  instance : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_ssl_cert) -> ()

let yojson_of_google_sql_ssl_cert =
  (function
   | {
       common_name = v_common_name;
       id = v_id;
       instance = v_instance;
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_common_name in
         ("common_name", arg) :: bnds
       in
       `Assoc bnds
    : google_sql_ssl_cert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_ssl_cert

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_sql_ssl_cert ?id ?project ?timeouts ~common_name ~instance
    () : google_sql_ssl_cert =
  { common_name; id; instance; project; timeouts }

type t = {
  tf_name : string;
  cert : string prop;
  cert_serial_number : string prop;
  common_name : string prop;
  create_time : string prop;
  expiration_time : string prop;
  id : string prop;
  instance : string prop;
  private_key : string prop;
  project : string prop;
  server_ca_cert : string prop;
  sha1_fingerprint : string prop;
}

let make ?id ?project ?timeouts ~common_name ~instance __id =
  let __type = "google_sql_ssl_cert" in
  let __attrs =
    ({
       tf_name = __id;
       cert = Prop.computed __type __id "cert";
       cert_serial_number =
         Prop.computed __type __id "cert_serial_number";
       common_name = Prop.computed __type __id "common_name";
       create_time = Prop.computed __type __id "create_time";
       expiration_time = Prop.computed __type __id "expiration_time";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       private_key = Prop.computed __type __id "private_key";
       project = Prop.computed __type __id "project";
       server_ca_cert = Prop.computed __type __id "server_ca_cert";
       sha1_fingerprint =
         Prop.computed __type __id "sha1_fingerprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_ssl_cert
        (google_sql_ssl_cert ?id ?project ?timeouts ~common_name
           ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~common_name ~instance
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~common_name ~instance __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
