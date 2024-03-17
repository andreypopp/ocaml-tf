(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_disk_async_replication__secondary_disk = {
  disk : string prop;
      (** Secondary disk for asynchronous replication. *)
  state : string prop;
      (** Output-only. Status of replication on the secondary disk. *)
}
[@@deriving yojson_of]
(** Secondary disk for asynchronous replication. *)

type google_compute_disk_async_replication__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_disk_async_replication__timeouts *)

type google_compute_disk_async_replication = {
  id : string prop option; [@option]  (** id *)
  primary_disk : string prop;
      (** Primary disk for asynchronous replication. *)
  secondary_disk :
    google_compute_disk_async_replication__secondary_disk list;
  timeouts : google_compute_disk_async_replication__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_disk_async_replication *)

type t = { id : string prop; primary_disk : string prop }

let google_compute_disk_async_replication ?id ?timeouts ~primary_disk
    ~secondary_disk __resource_id =
  let __resource_type = "google_compute_disk_async_replication" in
  let __resource =
    ({ id; primary_disk; secondary_disk; timeouts }
      : google_compute_disk_async_replication)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
