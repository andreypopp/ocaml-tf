(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_sql_ssl_cert = {
  common_name : string prop;
      (** The common name to be used in the certificate to identify the client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a new resource to be created. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** The name of the Cloud SQL instance. Changing this forces a new resource to be created. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_sql_ssl_cert *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_sql_ssl_cert ?id ?project ?timeouts ~common_name ~instance
    () : google_sql_ssl_cert =
  { common_name; id; instance; project; timeouts }

type t = {
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
