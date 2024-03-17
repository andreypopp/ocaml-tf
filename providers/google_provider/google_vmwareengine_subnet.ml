(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vmwareengine_subnet__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_subnet__timeouts *)

type google_vmwareengine_subnet__dhcp_address_ranges = {
  first_address : string prop;  (** first_address *)
  last_address : string prop;  (** last_address *)
}
[@@deriving yojson_of]

type google_vmwareengine_subnet = {
  id : string prop option; [@option]  (** id *)
  ip_cidr_range : string prop;
      (** The IP address range of the subnet in CIDR format. *)
  name : string prop;
      (** The ID of the subnet. For userDefined subnets, this name should be in the format of service-n,
where n ranges from 1 to 5. *)
  parent : string prop;
      (** The resource name of the private cloud to create a new subnet in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud *)
  timeouts : google_vmwareengine_subnet__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_subnet *)

let google_vmwareengine_subnet ?id ?timeouts ~ip_cidr_range ~name
    ~parent __resource_id =
  let __resource_type = "google_vmwareengine_subnet" in
  let __resource = { id; ip_cidr_range; name; parent; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_subnet __resource);
  ()
