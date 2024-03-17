(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_target_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_target_instance__timeouts *)

type google_compute_target_instance = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  instance : string;
      (** The Compute instance VM handling traffic for this target instance.
Accepts the instance self-link, relative path
(e.g. 'projects/project/zones/zone/instances/instance') or name. If
name is given, the zone will default to the given zone or
the provider-default zone and the project will default to the
provider-level project. *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  nat_policy : string option; [@option]
      (** NAT option controlling how IPs are NAT'ed to the instance.
Currently only NO_NAT (default value) is supported. Default value: NO_NAT Possible values: [NO_NAT] *)
  timeouts : google_compute_target_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_instance *)

let google_compute_target_instance ?description ?nat_policy ?timeouts
    ~instance ~name __resource_id =
  let __resource_type = "google_compute_target_instance" in
  let __resource =
    { description; instance; name; nat_policy; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_instance __resource);
  ()
