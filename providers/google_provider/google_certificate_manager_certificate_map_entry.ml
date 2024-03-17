(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_certificate_manager_certificate_map_entry__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate_map_entry__timeouts *)

type google_certificate_manager_certificate_map_entry = {
  certificates : string list;
      (** A set of Certificates defines for the given hostname.
There can be defined up to fifteen certificates in each Certificate Map Entry.
Each certificate must match pattern projects/*/locations/*/certificates/*. *)
  description : string option; [@option]
      (** A human-readable description of the resource. *)
  hostname : string option; [@option]
      (** A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression \(\*.example.com)
for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for
selecting a proper certificate. *)
  labels : (string * string) list option; [@option]
      (** Set of labels associated with a Certificate Map Entry.
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  map : string;
      (** A map entry that is inputted into the cetrificate map *)
  matcher : string option; [@option]
      (** A predefined matcher for particular cases, other than SNI selection *)
  name : string;
      (** A user-defined name of the Certificate Map Entry. Certificate Map Entry
names must be unique globally and match pattern
'projects/*/locations/*/certificateMaps/*/certificateMapEntries/*' *)
  timeouts :
    google_certificate_manager_certificate_map_entry__timeouts option;
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate_map_entry *)

let google_certificate_manager_certificate_map_entry ?description
    ?hostname ?labels ?matcher ?timeouts ~certificates ~map ~name
    __resource_id =
  let __resource_type =
    "google_certificate_manager_certificate_map_entry"
  in
  let __resource =
    {
      certificates;
      description;
      hostname;
      labels;
      map;
      matcher;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_certificate_map_entry
       __resource);
  ()
