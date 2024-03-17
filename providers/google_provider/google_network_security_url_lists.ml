(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_security_url_lists__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_security_url_lists__timeouts *)

type google_network_security_url_lists = {
  description : string prop option; [@option]
      (** Free-text description of the resource. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the url lists. *)
  name : string prop;
      (** Short name of the UrlList resource to be created.
This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'. *)
  project : string prop option; [@option]  (** project *)
  values : string prop list;  (** FQDNs and URLs. *)
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
