(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dns_record_set__routing_policy__geo__health_checked_targets__internal_load_balancers = {
  ip_address : string;
      (** The frontend IP address of the load balancer. *)
  ip_protocol : string;
      (** The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [tcp, udp] *)
  load_balancer_type : string;
      (** The type of load balancer. This value is case-sensitive. Possible values: [regionalL4ilb, regionalL7ilb, globalL7ilb] *)
  network_url : string;
      (** The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`. *)
  port : string;  (** The configured port of the load balancer. *)
  project : string;
      (** The ID of the project in which the load balancer belongs. *)
  region : string option; [@option]
      (** The region of the load balancer. Only needed for regional load balancers. *)
}
[@@deriving yojson_of]
(** The list of internal load balancers to health check. *)

type google_dns_record_set__routing_policy__geo__health_checked_targets = {
  internal_load_balancers :
    google_dns_record_set__routing_policy__geo__health_checked_targets__internal_load_balancers
    list;
}
[@@deriving yojson_of]
(** For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item. *)

type google_dns_record_set__routing_policy__geo = {
  location : string;
      (** The location name defined in Google Cloud. *)
  rrdatas : string list option; [@option]  (** rrdatas *)
  health_checked_targets :
    google_dns_record_set__routing_policy__geo__health_checked_targets
    list;
}
[@@deriving yojson_of]
(** The configuration for Geo location based routing policy. *)

type google_dns_record_set__routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers = {
  ip_address : string;
      (** The frontend IP address of the load balancer. *)
  ip_protocol : string;
      (** The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [tcp, udp] *)
  load_balancer_type : string;
      (** The type of load balancer. This value is case-sensitive. Possible values: [regionalL4ilb, regionalL7ilb, globalL7ilb] *)
  network_url : string;
      (** The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`. *)
  port : string;  (** The configured port of the load balancer. *)
  project : string;
      (** The ID of the project in which the load balancer belongs. *)
  region : string option; [@option]
      (** The region of the load balancer. Only needed for regional load balancers. *)
}
[@@deriving yojson_of]
(** The list of internal load balancers to health check. *)

type google_dns_record_set__routing_policy__primary_backup__backup_geo__health_checked_targets = {
  internal_load_balancers :
    google_dns_record_set__routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers
    list;
}
[@@deriving yojson_of]
(** For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item. *)

type google_dns_record_set__routing_policy__primary_backup__backup_geo = {
  location : string;
      (** The location name defined in Google Cloud. *)
  rrdatas : string list option; [@option]  (** rrdatas *)
  health_checked_targets :
    google_dns_record_set__routing_policy__primary_backup__backup_geo__health_checked_targets
    list;
}
[@@deriving yojson_of]
(** The backup geo targets, which provide a regional failover policy for the otherwise global primary targets. *)

type google_dns_record_set__routing_policy__primary_backup__primary__internal_load_balancers = {
  ip_address : string;
      (** The frontend IP address of the load balancer. *)
  ip_protocol : string;
      (** The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [tcp, udp] *)
  load_balancer_type : string;
      (** The type of load balancer. This value is case-sensitive. Possible values: [regionalL4ilb, regionalL7ilb, globalL7ilb] *)
  network_url : string;
      (** The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`. *)
  port : string;  (** The configured port of the load balancer. *)
  project : string;
      (** The ID of the project in which the load balancer belongs. *)
  region : string option; [@option]
      (** The region of the load balancer. Only needed for regional load balancers. *)
}
[@@deriving yojson_of]
(** The list of internal load balancers to health check. *)

type google_dns_record_set__routing_policy__primary_backup__primary = {
  internal_load_balancers :
    google_dns_record_set__routing_policy__primary_backup__primary__internal_load_balancers
    list;
}
[@@deriving yojson_of]
(** The list of global primary targets to be health checked. *)

type google_dns_record_set__routing_policy__primary_backup = {
  enable_geo_fencing_for_backups : bool option; [@option]
      (** Specifies whether to enable fencing for backup geo queries. *)
  trickle_ratio : float option; [@option]
      (** Specifies the percentage of traffic to send to the backup targets even when the primary targets are healthy. *)
  backup_geo :
    google_dns_record_set__routing_policy__primary_backup__backup_geo
    list;
  primary :
    google_dns_record_set__routing_policy__primary_backup__primary
    list;
}
[@@deriving yojson_of]
(** The configuration for a primary-backup policy with global to regional failover. Queries are responded to with the global primary targets, but if none of the primary targets are healthy, then we fallback to a regional failover policy. *)

type google_dns_record_set__routing_policy__wrr__health_checked_targets__internal_load_balancers = {
  ip_address : string;
      (** The frontend IP address of the load balancer. *)
  ip_protocol : string;
      (** The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [tcp, udp] *)
  load_balancer_type : string;
      (** The type of load balancer. This value is case-sensitive. Possible values: [regionalL4ilb, regionalL7ilb, globalL7ilb] *)
  network_url : string;
      (** The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`. *)
  port : string;  (** The configured port of the load balancer. *)
  project : string;
      (** The ID of the project in which the load balancer belongs. *)
  region : string option; [@option]
      (** The region of the load balancer. Only needed for regional load balancers. *)
}
[@@deriving yojson_of]
(** The list of internal load balancers to health check. *)

type google_dns_record_set__routing_policy__wrr__health_checked_targets = {
  internal_load_balancers :
    google_dns_record_set__routing_policy__wrr__health_checked_targets__internal_load_balancers
    list;
}
[@@deriving yojson_of]
(** The list of targets to be health checked. Note that if DNSSEC is enabled for this zone, only one of `rrdatas` or `health_checked_targets` can be set. *)

type google_dns_record_set__routing_policy__wrr = {
  rrdatas : string list option; [@option]  (** rrdatas *)
  weight : float;  (** The ratio of traffic routed to the target. *)
  health_checked_targets :
    google_dns_record_set__routing_policy__wrr__health_checked_targets
    list;
}
[@@deriving yojson_of]
(** The configuration for Weighted Round Robin based routing policy. *)

type google_dns_record_set__routing_policy = {
  enable_geo_fencing : bool option; [@option]
      (** Specifies whether to enable fencing for geo queries. *)
  geo : google_dns_record_set__routing_policy__geo list;
  primary_backup :
    google_dns_record_set__routing_policy__primary_backup list;
  wrr : google_dns_record_set__routing_policy__wrr list;
}
[@@deriving yojson_of]
(** The configuration for steering traffic based on query. You can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type. *)

type google_dns_record_set = {
  id : string option; [@option]  (** id *)
  managed_zone : string;
      (** The name of the zone in which this record set will reside. *)
  name : string;  (** The DNS name this record set will apply to. *)
  project : string option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  rrdatas : string list option; [@option]
      (** The string data for the records in this record set whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding \ if you don't want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \\ inside the Terraform configuration string (e.g. first255characters\\morecharacters). *)
  ttl : float option; [@option]
      (** The time-to-live of this record set (seconds). *)
  type_ : string; [@key "type"]  (** The DNS record set type. *)
  routing_policy : google_dns_record_set__routing_policy list;
}
[@@deriving yojson_of]
(** google_dns_record_set *)

let google_dns_record_set ?id ?project ?rrdatas ?ttl ~managed_zone
    ~name ~type_ ~routing_policy __resource_id =
  let __resource_type = "google_dns_record_set" in
  let __resource =
    {
      id;
      managed_zone;
      name;
      project;
      rrdatas;
      ttl;
      type_;
      routing_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_record_set __resource);
  ()
