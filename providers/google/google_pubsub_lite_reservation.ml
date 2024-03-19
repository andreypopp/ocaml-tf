(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?project ?region ?timeouts ~name
    ~throughput_capacity __resource_id =
  let __resource_type = "google_pubsub_lite_reservation" in
  let __resource =
    google_pubsub_lite_reservation ?id ?project ?region ?timeouts
      ~name ~throughput_capacity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_lite_reservation __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       throughput_capacity =
         Prop.computed __resource_type __resource_id
           "throughput_capacity";
     }
      : t)
  in
  __resource_attributes
