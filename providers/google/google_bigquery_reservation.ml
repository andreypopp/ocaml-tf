(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscale = {
  max_slots : float prop option; [@option]
      (** Number of slots to be scaled when needed. *)
}
[@@deriving yojson_of]
(** The configuration parameters for the auto scaling feature. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_bigquery_reservation = {
  concurrency : float prop option; [@option]
      (** Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size. *)
  edition : string prop option; [@option]
      (** The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS *)
  id : string prop option; [@option]  (** id *)
  ignore_idle_slots : bool prop option; [@option]
      (** If false, any query using this reservation will use idle slots from other reservations within
the same admin project. If true, a query using this reservation will execute with the slot
capacity specified above at most. *)
  location : string prop option; [@option]
      (** The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. *)
  multi_region_auxiliary : bool prop option; [@option]
      (** Applicable only for reservations located within one of the BigQuery multi-regions (US or EU).
If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region. *)
  name : string prop;
      (** The name of the reservation. This field must only contain alphanumeric characters or dash. *)
  project : string prop option; [@option]  (** project *)
  slot_capacity : float prop;
      (** Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the
unit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false. *)
  autoscale : autoscale list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_reservation *)

let autoscale ?max_slots () : autoscale = { max_slots }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_reservation ?concurrency ?edition ?id
    ?ignore_idle_slots ?location ?multi_region_auxiliary ?project
    ?timeouts ~name ~slot_capacity ~autoscale () :
    google_bigquery_reservation =
  {
    concurrency;
    edition;
    id;
    ignore_idle_slots;
    location;
    multi_region_auxiliary;
    name;
    project;
    slot_capacity;
    autoscale;
    timeouts;
  }

type t = {
  concurrency : float prop;
  edition : string prop;
  id : string prop;
  ignore_idle_slots : bool prop;
  location : string prop;
  multi_region_auxiliary : bool prop;
  name : string prop;
  project : string prop;
  slot_capacity : float prop;
}

let make ?concurrency ?edition ?id ?ignore_idle_slots ?location
    ?multi_region_auxiliary ?project ?timeouts ~name ~slot_capacity
    ~autoscale __id =
  let __type = "google_bigquery_reservation" in
  let __attrs =
    ({
       concurrency = Prop.computed __type __id "concurrency";
       edition = Prop.computed __type __id "edition";
       id = Prop.computed __type __id "id";
       ignore_idle_slots =
         Prop.computed __type __id "ignore_idle_slots";
       location = Prop.computed __type __id "location";
       multi_region_auxiliary =
         Prop.computed __type __id "multi_region_auxiliary";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       slot_capacity = Prop.computed __type __id "slot_capacity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_reservation
        (google_bigquery_reservation ?concurrency ?edition ?id
           ?ignore_idle_slots ?location ?multi_region_auxiliary
           ?project ?timeouts ~name ~slot_capacity ~autoscale ());
    attrs = __attrs;
  }

let register ?tf_module ?concurrency ?edition ?id ?ignore_idle_slots
    ?location ?multi_region_auxiliary ?project ?timeouts ~name
    ~slot_capacity ~autoscale __id =
  let (r : _ Tf_core.resource) =
    make ?concurrency ?edition ?id ?ignore_idle_slots ?location
      ?multi_region_auxiliary ?project ?timeouts ~name ~slot_capacity
      ~autoscale __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
