(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_app_engine_application_url_dispatch_rules__dispatch_rules = {
  domain : string option; [@option]
      (** Domain name to match against. The wildcard * is supported if specified before a period: *..
Defaults to matching all domains: *. *)
  path : string;
      (** Pathname within the host. Must start with a /. A single * can be included at the end of the path.
The sum of the lengths of the domain and path may not exceed 100 characters. *)
  service : string;
      (** Pathname within the host. Must start with a /. A single * can be included at the end of the path.
The sum of the lengths of the domain and path may not exceed 100 characters. *)
}
[@@deriving yojson_of]
(** Rules to match an HTTP request and dispatch that request to a service. *)

type google_app_engine_application_url_dispatch_rules__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_application_url_dispatch_rules__timeouts *)

type google_app_engine_application_url_dispatch_rules = {
  dispatch_rules :
    google_app_engine_application_url_dispatch_rules__dispatch_rules
    list;
  timeouts :
    google_app_engine_application_url_dispatch_rules__timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_application_url_dispatch_rules *)

let google_app_engine_application_url_dispatch_rules ?timeouts
    ~dispatch_rules __resource_id =
  let __resource_type =
    "google_app_engine_application_url_dispatch_rules"
  in
  let __resource = { dispatch_rules; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_application_url_dispatch_rules
       __resource);
  ()
