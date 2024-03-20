(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_pubsub_lite_reservation = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Name of the reservation. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the pubsub lite reservation. *)
  throughput_capacity : float prop;
      (** The reserved throughput capacity. Every unit of throughput capacity is
equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
messages. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_lite_reservation *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_pubsub_lite_reservation ?id ?project ?region ?timeouts
    ~name ~throughput_capacity () : google_pubsub_lite_reservation =
  { id; name; project; region; throughput_capacity; timeouts }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  throughput_capacity : float prop;
}

let make ?id ?project ?region ?timeouts ~name ~throughput_capacity
    __id =
  let __type = "google_pubsub_lite_reservation" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       throughput_capacity =
         Prop.computed __type __id "throughput_capacity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_lite_reservation
        (google_pubsub_lite_reservation ?id ?project ?region
           ?timeouts ~name ~throughput_capacity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?timeouts ~name
    ~throughput_capacity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ?timeouts ~name ~throughput_capacity
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
