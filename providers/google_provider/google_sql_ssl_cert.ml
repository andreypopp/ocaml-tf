(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sql_ssl_cert__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_sql_ssl_cert__timeouts *)

type google_sql_ssl_cert = {
  common_name : string prop;
      (** The common name to be used in the certificate to identify the client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a new resource to be created. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** The name of the Cloud SQL instance. Changing this forces a new resource to be created. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  timeouts : google_sql_ssl_cert__timeouts option;
}
[@@deriving yojson_of]
(** google_sql_ssl_cert *)

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

let google_sql_ssl_cert ?id ?project ?timeouts ~common_name ~instance
    __resource_id =
  let __resource_type = "google_sql_ssl_cert" in
  let __resource =
    ({ common_name; id; instance; project; timeouts }
      : google_sql_ssl_cert)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sql_ssl_cert __resource);
  let __resource_attributes =
    ({
       cert = Prop.computed __resource_type __resource_id "cert";
       cert_serial_number =
         Prop.computed __resource_type __resource_id
           "cert_serial_number";
       common_name =
         Prop.computed __resource_type __resource_id "common_name";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       expiration_time =
         Prop.computed __resource_type __resource_id
           "expiration_time";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       project =
         Prop.computed __resource_type __resource_id "project";
       server_ca_cert =
         Prop.computed __resource_type __resource_id "server_ca_cert";
       sha1_fingerprint =
         Prop.computed __resource_type __resource_id
           "sha1_fingerprint";
     }
      : t)
  in
  __resource_attributes
