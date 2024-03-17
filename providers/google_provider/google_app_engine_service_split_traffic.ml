(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_app_engine_service_split_traffic__split = {
  allocations : (string * string) list;
      (** Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits. *)
  shard_by : string option; [@option]
      (** Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed. Possible values: [UNSPECIFIED, COOKIE, IP, RANDOM] *)
}
[@@deriving yojson_of]
(** Mapping that defines fractional HTTP traffic diversion to different versions within the service. *)

type google_app_engine_service_split_traffic__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_service_split_traffic__timeouts *)

type google_app_engine_service_split_traffic = {
  migrate_traffic : bool option; [@option]
      (** If set to true traffic will be migrated to this version. *)
  service : string;
      (** The name of the service these settings apply to. *)
  split : google_app_engine_service_split_traffic__split list;
  timeouts : google_app_engine_service_split_traffic__timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_service_split_traffic *)

let google_app_engine_service_split_traffic ?migrate_traffic
    ?timeouts ~service ~split __resource_id =
  let __resource_type = "google_app_engine_service_split_traffic" in
  let __resource = { migrate_traffic; service; split; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_service_split_traffic __resource);
  ()
