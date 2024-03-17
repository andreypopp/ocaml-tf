(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_lite_reservation__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_pubsub_lite_reservation__timeouts *)

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
  timeouts : google_pubsub_lite_reservation__timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_lite_reservation *)

let google_pubsub_lite_reservation ?id ?project ?region ?timeouts
    ~name ~throughput_capacity __resource_id =
  let __resource_type = "google_pubsub_lite_reservation" in
  let __resource =
    { id; name; project; region; throughput_capacity; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_lite_reservation __resource);
  ()
