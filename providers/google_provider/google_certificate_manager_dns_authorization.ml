(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_certificate_manager_dns_authorization__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_certificate_manager_dns_authorization__timeouts *)

type google_certificate_manager_dns_authorization__dns_resource_record = {
  data : string;  (** data *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_certificate_manager_dns_authorization = {
  description : string option; [@option]
      (** A human-readable description of the resource. *)
  domain : string;
      (** A domain which is being authorized. A DnsAuthorization resource covers a
single domain and its wildcard, e.g. authorization for example.com can
be used to issue certificates for example.com and *.example.com. *)
  labels : (string * string) list option; [@option]
      (** Set of label tags associated with the DNS Authorization resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string option; [@option]
      (** The Certificate Manager location. If not specified, global is used. *)
  name : string;
      (** Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit. *)
  timeouts :
    google_certificate_manager_dns_authorization__timeouts option;
}
[@@deriving yojson_of]
(** google_certificate_manager_dns_authorization *)

let google_certificate_manager_dns_authorization ?description ?labels
    ?location ?timeouts ~domain ~name __resource_id =
  let __resource_type =
    "google_certificate_manager_dns_authorization"
  in
  let __resource =
    { description; domain; labels; location; name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_dns_authorization
       __resource);
  ()
