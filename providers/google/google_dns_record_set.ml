(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dns_record_set__routing_policy__geo__health_checked_targets__internal_load_balancers = {
  ip_address : string prop;
      (** The frontend IP address of the load balancer. *)
  ip_protocol : string prop;
      (** The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [tcp, udp] *)
  load_balancer_type : string prop;
      (** The type of load balancer. This value is case-sensitive. Possible values: [regionalL4ilb, regionalL7ilb, globalL7ilb] *)
  network_url : string prop;
      (** The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`. *)
  port : string prop;
      (** The configured port of the load balancer. *)
  project : string prop;
      (** The ID of the project in which the load balancer belongs. *)
  region : string prop option; [@option]
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
  location : string prop;
      (** The location name defined in Google Cloud. *)
  rrdatas : string prop list option; [@option]  (** rrdatas *)
  health_checked_targets :
    google_dns_record_set__routing_policy__geo__health_checked_targets
    list;
}
[@@deriving yojson_of]
(** The configuration for Geo location based routing policy. *)

type google_dns_record_set__routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers = {
  ip_address : string prop;
      (** The frontend IP address of the load balancer. *)
  ip_protocol : string prop;
      (** The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [tcp, udp] *)
  load_balancer_type : string prop;
      (** The type of load balancer. This value is case-sensitive. Possible values: [regionalL4ilb, regionalL7ilb, globalL7ilb] *)
  network_url : string prop;
      (** The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`. *)
  port : string prop;
      (** The configured port of the load balancer. *)
  project : string prop;
      (** The ID of the project in which the load balancer belongs. *)
  region : string prop option; [@option]
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
  location : string prop;
      (** The location name defined in Google Cloud. *)
  rrdatas : string prop list option; [@option]  (** rrdatas *)
  health_checked_targets :
    google_dns_record_set__routing_policy__primary_backup__backup_geo__health_checked_targets
    list;
}
[@@deriving yojson_of]
(** The backup geo targets, which provide a regional failover policy for the otherwise global primary targets. *)

type google_dns_record_set__routing_policy__primary_backup__primary__internal_load_balancers = {
  ip_address : string prop;
      (** The frontend IP address of the load balancer. *)
  ip_protocol : string prop;
      (** The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [tcp, udp] *)
  load_balancer_type : string prop;
      (** The type of load balancer. This value is case-sensitive. Possible values: [regionalL4ilb, regionalL7ilb, globalL7ilb] *)
  network_url : string prop;
      (** The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`. *)
  port : string prop;
      (** The configured port of the load balancer. *)
  project : string prop;
      (** The ID of the project in which the load balancer belongs. *)
  region : string prop option; [@option]
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
  enable_geo_fencing_for_backups : bool prop option; [@option]
      (** Specifies whether to enable fencing for backup geo queries. *)
  trickle_ratio : float prop option; [@option]
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
  ip_address : string prop;
      (** The frontend IP address of the load balancer. *)
  ip_protocol : string prop;
      (** The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [tcp, udp] *)
  load_balancer_type : string prop;
      (** The type of load balancer. This value is case-sensitive. Possible values: [regionalL4ilb, regionalL7ilb, globalL7ilb] *)
  network_url : string prop;
      (** The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`. *)
  port : string prop;
      (** The configured port of the load balancer. *)
  project : string prop;
      (** The ID of the project in which the load balancer belongs. *)
  region : string prop option; [@option]
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
  rrdatas : string prop list option; [@option]  (** rrdatas *)
  weight : float prop;
      (** The ratio of traffic routed to the target. *)
  health_checked_targets :
    google_dns_record_set__routing_policy__wrr__health_checked_targets
    list;
}
[@@deriving yojson_of]
(** The configuration for Weighted Round Robin based routing policy. *)

type google_dns_record_set__routing_policy = {
  enable_geo_fencing : bool prop option; [@option]
      (** Specifies whether to enable fencing for geo queries. *)
  geo : google_dns_record_set__routing_policy__geo list;
  primary_backup :
    google_dns_record_set__routing_policy__primary_backup list;
  wrr : google_dns_record_set__routing_policy__wrr list;
}
[@@deriving yojson_of]
(** The configuration for steering traffic based on query. You can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type. *)

type google_dns_record_set = {
  id : string prop option; [@option]  (** id *)
  managed_zone : string prop;
      (** The name of the zone in which this record set will reside. *)
  name : string prop;
      (** The DNS name this record set will apply to. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  rrdatas : string prop list option; [@option]
      (** The string data for the records in this record set whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding \ if you don't want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \\ inside the Terraform configuration string (e.g. first255characters\\morecharacters). *)
  ttl : float prop option; [@option]
      (** The time-to-live of this record set (seconds). *)
  type_ : string prop; [@key "type"]  (** The DNS record set type. *)
  routing_policy : google_dns_record_set__routing_policy list;
}
[@@deriving yojson_of]
(** google_dns_record_set *)

type t = {
  id : string prop;
  managed_zone : string prop;
  name : string prop;
  project : string prop;
  rrdatas : string list prop;
  ttl : float prop;
  type_ : string prop;
}

let google_dns_record_set ?id ?project ?rrdatas ?ttl ~managed_zone
    ~name ~type_ ~routing_policy __resource_id =
  let __resource_type = "google_dns_record_set" in
  let __resource =
    ({
       id;
       managed_zone;
       name;
       project;
       rrdatas;
       ttl;
       type_;
       routing_policy;
     }
      : google_dns_record_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_record_set __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       managed_zone =
         Prop.computed __resource_type __resource_id "managed_zone";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       rrdatas =
         Prop.computed __resource_type __resource_id "rrdatas";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
