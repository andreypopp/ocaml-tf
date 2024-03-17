(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_managed_ssl_certificate__managed = {
  domains : string list;
      (** Domains for which a managed SSL certificate will be valid.  Currently,
there can be up to 100 domains in this list. *)
}
[@@deriving yojson_of]
(** Properties relevant to a managed certificate.  These will be used if the
certificate is managed (as indicated by a value of 'MANAGED' in 'type'). *)

type google_compute_managed_ssl_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_managed_ssl_certificate__timeouts *)

type google_compute_managed_ssl_certificate = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  name : string option; [@option]
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.


These are in the same namespace as the managed SSL certificates. *)
  type_ : string option; [@option] [@key "type"]
      (** Enum field whose value is always 'MANAGED' - used to signal to the API
which type this is. Default value: MANAGED Possible values: [MANAGED] *)
  managed : google_compute_managed_ssl_certificate__managed list;
  timeouts : google_compute_managed_ssl_certificate__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_managed_ssl_certificate *)

let google_compute_managed_ssl_certificate ?description ?name ?type_
    ?timeouts ~managed __resource_id =
  let __resource_type = "google_compute_managed_ssl_certificate" in
  let __resource = { description; name; type_; managed; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_managed_ssl_certificate __resource);
  ()
