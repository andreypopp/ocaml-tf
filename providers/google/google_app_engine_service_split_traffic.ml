(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type split = {
  allocations : (string * string prop) list;
      (** Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits. *)
  shard_by : string prop option; [@option]
      (** Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed. Possible values: [UNSPECIFIED, COOKIE, IP, RANDOM] *)
}
[@@deriving yojson_of]
(** Mapping that defines fractional HTTP traffic diversion to different versions within the service. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_app_engine_service_split_traffic = {
  id : string prop option; [@option]  (** id *)
  migrate_traffic : bool prop option; [@option]
      (** If set to true traffic will be migrated to this version. *)
  project : string prop option; [@option]  (** project *)
  service : string prop;
      (** The name of the service these settings apply to. *)
  split : split list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_service_split_traffic *)

let split ?shard_by ~allocations () : split =
  { allocations; shard_by }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_service_split_traffic ?id ?migrate_traffic
    ?project ?timeouts ~service ~split () :
    google_app_engine_service_split_traffic =
  { id; migrate_traffic; project; service; split; timeouts }

type t = {
  id : string prop;
  migrate_traffic : bool prop;
  project : string prop;
  service : string prop;
}

let make ?id ?migrate_traffic ?project ?timeouts ~service ~split __id
    =
  let __type = "google_app_engine_service_split_traffic" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       migrate_traffic = Prop.computed __type __id "migrate_traffic";
       project = Prop.computed __type __id "project";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_service_split_traffic
        (google_app_engine_service_split_traffic ?id ?migrate_traffic
           ?project ?timeouts ~service ~split ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?migrate_traffic ?project ?timeouts
    ~service ~split __id =
  let (r : _ Tf_core.resource) =
    make ?id ?migrate_traffic ?project ?timeouts ~service ~split __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
