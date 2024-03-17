(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_instance__timeouts *)

type google_apigee_instance = {
  description : string option; [@option]
      (** Description of the instance. *)
  disk_encryption_key_name : string option; [@option]
      (** Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
Use the following format: 'projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)' *)
  display_name : string option; [@option]
      (** Display name of the instance. *)
  ip_range : string option; [@option]
      (** IP range represents the customer-provided CIDR block of length 22 that will be used for
the Apigee instance creation. This optional range, if provided, should be freely
available as part of larger named range the customer has allocated to the Service
Networking peering. If this is not provided, Apigee will automatically request for any
available /22 CIDR block from Service Networking. The customer should use this CIDR block
for configuring their firewall needs to allow traffic from Apigee.
Input format: a.b.c.d/22 *)
  location : string;
      (** Required. Compute Engine location where the instance resides. *)
  name : string;  (** Resource ID of the instance. *)
  org_id : string;
      (** The Apigee Organization associated with the Apigee instance,
in the format 'organizations/{{org_name}}'. *)
  timeouts : google_apigee_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_instance *)

let google_apigee_instance ?description ?disk_encryption_key_name
    ?display_name ?ip_range ?timeouts ~location ~name ~org_id
    __resource_id =
  let __resource_type = "google_apigee_instance" in
  let __resource =
    {
      description;
      disk_encryption_key_name;
      display_name;
      ip_range;
      location;
      name;
      org_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_instance __resource);
  ()
