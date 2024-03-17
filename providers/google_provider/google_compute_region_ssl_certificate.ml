(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_region_ssl_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_region_ssl_certificate__timeouts *)

type google_compute_region_ssl_certificate = {
  certificate : string;
      (** The certificate in PEM format.
The certificate chain must be no greater than 5 certs long.
The chain must include at least one intermediate cert. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.


These are in the same namespace as the managed SSL certificates. *)
  name_prefix : string option; [@option]
      (** Creates a unique name beginning with the specified prefix. Conflicts with name. *)
  private_key : string;
      (** The write-only private key in PEM format. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** The Region in which the created regional ssl certificate should reside.
If it is not provided, the provider region is used. *)
  timeouts : google_compute_region_ssl_certificate__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_ssl_certificate *)

let google_compute_region_ssl_certificate ?description ?id ?name
    ?name_prefix ?project ?region ?timeouts ~certificate ~private_key
    __resource_id =
  let __resource_type = "google_compute_region_ssl_certificate" in
  let __resource =
    {
      certificate;
      description;
      id;
      name;
      name_prefix;
      private_key;
      project;
      region;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_ssl_certificate __resource);
  ()
