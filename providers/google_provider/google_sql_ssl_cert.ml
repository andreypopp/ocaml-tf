(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sql_ssl_cert__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_sql_ssl_cert__timeouts *)

type google_sql_ssl_cert = {
  common_name : string;
      (** The common name to be used in the certificate to identify the client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a new resource to be created. *)
  instance : string;
      (** The name of the Cloud SQL instance. Changing this forces a new resource to be created. *)
  timeouts : google_sql_ssl_cert__timeouts option;
}
[@@deriving yojson_of]
(** google_sql_ssl_cert *)

let google_sql_ssl_cert ?timeouts ~common_name ~instance
    __resource_id =
  let __resource_type = "google_sql_ssl_cert" in
  let __resource = { common_name; instance; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sql_ssl_cert __resource);
  ()
