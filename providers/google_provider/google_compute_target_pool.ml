(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_target_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_target_pool__timeouts *)

type google_compute_target_pool = {
  backup_pool : string option; [@option]
      (** URL to the backup target pool. Must also set failover_ratio. *)
  description : string option; [@option]
      (** Textual description field. *)
  failover_ratio : float option; [@option]
      (** Ratio (0 to 1) of failed nodes before using the backup pool (which must also be set). *)
  health_checks : string list option; [@option]
      (** List of zero or one health check name or self_link. Only legacy google_compute_http_health_check is supported. *)
  name : string;
      (** A unique name for the resource, required by GCE. Changing this forces a new resource to be created. *)
  session_affinity : string option; [@option]
      (** How to distribute load. Options are NONE (no affinity). CLIENT_IP (hash of the source/dest addresses / ports), and CLIENT_IP_PROTO also includes the protocol (default NONE). *)
  timeouts : google_compute_target_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_pool *)

let google_compute_target_pool ?backup_pool ?description
    ?failover_ratio ?health_checks ?session_affinity ?timeouts ~name
    __resource_id =
  let __resource_type = "google_compute_target_pool" in
  let __resource =
    {
      backup_pool;
      description;
      failover_ratio;
      health_checks;
      name;
      session_affinity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_pool __resource);
  ()
