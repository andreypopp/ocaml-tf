(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_public_delegated_prefix__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_public_delegated_prefix__timeouts *)

type google_compute_public_delegated_prefix = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  ip_cidr_range : string;
      (** The IPv4 address range, in CIDR format, represented by this public advertised prefix. *)
  is_live_migration : bool option; [@option]
      (** If true, the prefix will be live migrated. *)
  name : string;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  parent_prefix : string;
      (** The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix. *)
  region : string;  (** A region where the prefix will reside. *)
  timeouts : google_compute_public_delegated_prefix__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_public_delegated_prefix *)

let google_compute_public_delegated_prefix ?description
    ?is_live_migration ?timeouts ~ip_cidr_range ~name ~parent_prefix
    ~region __resource_id =
  let __resource_type = "google_compute_public_delegated_prefix" in
  let __resource =
    {
      description;
      ip_cidr_range;
      is_live_migration;
      name;
      parent_prefix;
      region;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_public_delegated_prefix __resource);
  ()
