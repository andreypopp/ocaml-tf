(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_instance__timeouts *)

type google_apigee_instance = {
  consumer_accept_list : string prop list option; [@option]
      (** Optional. Customer accept list represents the list of projects (id/number) on customer
side that can privately connect to the service attachment. It is an optional field
which the customers can provide during the instance creation. By default, the customer
project associated with the Apigee organization will be included to the list. *)
  description : string prop option; [@option]
      (** Description of the instance. *)
  disk_encryption_key_name : string prop option; [@option]
      (** Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
Use the following format: 'projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)' *)
  display_name : string prop option; [@option]
      (** Display name of the instance. *)
  id : string prop option; [@option]  (** id *)
  ip_range : string prop option; [@option]
      (** IP range represents the customer-provided CIDR block of length 22 that will be used for
the Apigee instance creation. This optional range, if provided, should be freely
available as part of larger named range the customer has allocated to the Service
Networking peering. If this is not provided, Apigee will automatically request for any
available /22 CIDR block from Service Networking. The customer should use this CIDR block
for configuring their firewall needs to allow traffic from Apigee.
Input format: a.b.c.d/22 *)
  location : string prop;
      (** Required. Compute Engine location where the instance resides. *)
  name : string prop;  (** Resource ID of the instance. *)
  org_id : string prop;
      (** The Apigee Organization associated with the Apigee instance,
in the format 'organizations/{{org_name}}'. *)
  peering_cidr_range : string prop option; [@option]
      (** The size of the CIDR block range that will be reserved by the instance. For valid values,
see [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation. *)
  timeouts : google_apigee_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_instance *)

type t = {
  consumer_accept_list : string list prop;
  description : string prop;
  disk_encryption_key_name : string prop;
  display_name : string prop;
  host : string prop;
  id : string prop;
  ip_range : string prop;
  location : string prop;
  name : string prop;
  org_id : string prop;
  peering_cidr_range : string prop;
  port : string prop;
  service_attachment : string prop;
}

let google_apigee_instance ?consumer_accept_list ?description
    ?disk_encryption_key_name ?display_name ?id ?ip_range
    ?peering_cidr_range ?timeouts ~location ~name ~org_id
    __resource_id =
  let __resource_type = "google_apigee_instance" in
  let __resource =
    ({
       consumer_accept_list;
       description;
       disk_encryption_key_name;
       display_name;
       id;
       ip_range;
       location;
       name;
       org_id;
       peering_cidr_range;
       timeouts;
     }
      : google_apigee_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_instance __resource);
  let __resource_attributes =
    ({
       consumer_accept_list =
         Prop.computed __resource_type __resource_id
           "consumer_accept_list";
       description =
         Prop.computed __resource_type __resource_id "description";
       disk_encryption_key_name =
         Prop.computed __resource_type __resource_id
           "disk_encryption_key_name";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       ip_range =
         Prop.computed __resource_type __resource_id "ip_range";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       peering_cidr_range =
         Prop.computed __resource_type __resource_id
           "peering_cidr_range";
       port = Prop.computed __resource_type __resource_id "port";
       service_attachment =
         Prop.computed __resource_type __resource_id
           "service_attachment";
     }
      : t)
  in
  __resource_attributes
