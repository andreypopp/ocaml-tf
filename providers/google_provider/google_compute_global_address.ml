(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_global_address__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_global_address__timeouts *)

type google_compute_global_address = {
  address : string option; [@option]
      (** The IP address or beginning of the address range represented by this
resource. This can be supplied as an input to reserve a specific
address or omitted to allow GCP to choose a valid one for you. *)
  address_type : string option; [@option]
      (** The type of the address to reserve.

* EXTERNAL indicates public/external single IP address.
* INTERNAL indicates internal IP ranges belonging to some network. Default value: EXTERNAL Possible values: [EXTERNAL, INTERNAL] *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  id : string option; [@option]  (** id *)
  ip_version : string option; [@option]
      (** The IP Version that will be used by this address. The default value is 'IPV4'. Possible values: [IPV4, IPV6] *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string option; [@option]
      (** The URL of the network in which to reserve the IP range. The IP range
must be in RFC1918 space. The network cannot be deleted if there are
any reserved IP ranges referring to it.

This should only be set when using an Internal address. *)
  prefix_length : float option; [@option]
      (** The prefix length of the IP range. If not present, it means the
address field is a single IP address.

This field is not applicable to addresses with addressType=INTERNAL
when purpose=PRIVATE_SERVICE_CONNECT *)
  project : string option; [@option]  (** project *)
  purpose : string option; [@option]
      (** The purpose of the resource. Possible values include:

* VPC_PEERING - for peer networks

* PRIVATE_SERVICE_CONNECT - for ([Beta](https://terraform.io/docs/providers/google/guides/provider_versions.html) only) Private Service Connect networks *)
  timeouts : google_compute_global_address__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_global_address *)

let google_compute_global_address ?address ?address_type ?description
    ?id ?ip_version ?network ?prefix_length ?project ?purpose
    ?timeouts ~name __resource_id =
  let __resource_type = "google_compute_global_address" in
  let __resource =
    {
      address;
      address_type;
      description;
      id;
      ip_version;
      name;
      network;
      prefix_length;
      project;
      purpose;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_global_address __resource);
  ()
