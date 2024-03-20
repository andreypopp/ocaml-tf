(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_instance *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_instance ?consumer_accept_list ?description
    ?disk_encryption_key_name ?display_name ?id ?ip_range
    ?peering_cidr_range ?timeouts ~location ~name ~org_id () :
    google_apigee_instance =
  {
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

let make ?consumer_accept_list ?description ?disk_encryption_key_name
    ?display_name ?id ?ip_range ?peering_cidr_range ?timeouts
    ~location ~name ~org_id __id =
  let __type = "google_apigee_instance" in
  let __attrs =
    ({
       consumer_accept_list =
         Prop.computed __type __id "consumer_accept_list";
       description = Prop.computed __type __id "description";
       disk_encryption_key_name =
         Prop.computed __type __id "disk_encryption_key_name";
       display_name = Prop.computed __type __id "display_name";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       peering_cidr_range =
         Prop.computed __type __id "peering_cidr_range";
       port = Prop.computed __type __id "port";
       service_attachment =
         Prop.computed __type __id "service_attachment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_instance
        (google_apigee_instance ?consumer_accept_list ?description
           ?disk_encryption_key_name ?display_name ?id ?ip_range
           ?peering_cidr_range ?timeouts ~location ~name ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?consumer_accept_list ?description
    ?disk_encryption_key_name ?display_name ?id ?ip_range
    ?peering_cidr_range ?timeouts ~location ~name ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?consumer_accept_list ?description ?disk_encryption_key_name
      ?display_name ?id ?ip_range ?peering_cidr_range ?timeouts
      ~location ~name ~org_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
