(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type secondary_disk = {
  disk : string prop;
      (** Secondary disk for asynchronous replication. *)
}
[@@deriving yojson_of]
(** Secondary disk for asynchronous replication. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_disk_async_replication = {
  id : string prop option; [@option]  (** id *)
  primary_disk : string prop;
      (** Primary disk for asynchronous replication. *)
  secondary_disk : secondary_disk list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_disk_async_replication *)

let secondary_disk ~disk () : secondary_disk = { disk }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_disk_async_replication ?id ?timeouts ~primary_disk
    ~secondary_disk () : google_compute_disk_async_replication =
  { id; primary_disk; secondary_disk; timeouts }

type t = { id : string prop; primary_disk : string prop }

let register ?tf_module ?id ?timeouts ~primary_disk ~secondary_disk
    __resource_id =
  let __resource_type = "google_compute_disk_async_replication" in
  let __resource =
    google_compute_disk_async_replication ?id ?timeouts ~primary_disk
      ~secondary_disk ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_disk_async_replication __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       primary_disk =
         Prop.computed __resource_type __resource_id "primary_disk";
     }
      : t)
  in
  __resource_attributes
