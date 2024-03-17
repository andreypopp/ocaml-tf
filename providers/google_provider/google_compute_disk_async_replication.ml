(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_disk_async_replication__secondary_disk = {
  disk : string;  (** Secondary disk for asynchronous replication. *)
  state : string;
      (** Output-only. Status of replication on the secondary disk. *)
}
[@@deriving yojson_of]
(** Secondary disk for asynchronous replication. *)

type google_compute_disk_async_replication__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_disk_async_replication__timeouts *)

type google_compute_disk_async_replication = {
  primary_disk : string;
      (** Primary disk for asynchronous replication. *)
  secondary_disk :
    google_compute_disk_async_replication__secondary_disk list;
  timeouts : google_compute_disk_async_replication__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_disk_async_replication *)

let google_compute_disk_async_replication ?timeouts ~primary_disk
    ~secondary_disk __resource_id =
  let __resource_type = "google_compute_disk_async_replication" in
  let __resource = { primary_disk; secondary_disk; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_disk_async_replication __resource);
  ()
