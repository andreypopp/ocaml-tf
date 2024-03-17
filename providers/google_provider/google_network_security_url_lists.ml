(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_security_url_lists__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_security_url_lists__timeouts *)

type google_network_security_url_lists = {
  description : string option; [@option]
      (** Free-text description of the resource. *)
  id : string option; [@option]  (** id *)
  location : string;  (** The location of the url lists. *)
  name : string;
      (** Short name of the UrlList resource to be created.
This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'. *)
  project : string option; [@option]  (** project *)
  values : string list;  (** FQDNs and URLs. *)
  timeouts : google_network_security_url_lists__timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_url_lists *)

let google_network_security_url_lists ?description ?id ?project
    ?timeouts ~location ~name ~values __resource_id =
  let __resource_type = "google_network_security_url_lists" in
  let __resource =
    { description; id; location; name; project; values; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_security_url_lists __resource);
  ()
