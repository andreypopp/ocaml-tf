(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_netapp_backup_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_backup_policy__timeouts *)

type google_netapp_backup_policy = {
  daily_backup_limit : float;
      (** Number of daily backups to keep. Note that the minimum daily backup limit is 2. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  enabled : bool option; [@option]
      (** If enabled, make backups automatically according to the schedules.
This will be applied to all volumes that have this policy attached and enforced on volume level. *)
  labels : (string * string) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** Name of the region for the policy to apply to. *)
  monthly_backup_limit : float;
      (** Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1. *)
  name : string;
      (** The name of the backup policy. Needs to be unique per location. *)
  weekly_backup_limit : float;
      (** Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1. *)
  timeouts : google_netapp_backup_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_backup_policy *)

let google_netapp_backup_policy ?description ?enabled ?labels
    ?timeouts ~daily_backup_limit ~location ~monthly_backup_limit
    ~name ~weekly_backup_limit __resource_id =
  let __resource_type = "google_netapp_backup_policy" in
  let __resource =
    {
      daily_backup_limit;
      description;
      enabled;
      labels;
      location;
      monthly_backup_limit;
      name;
      weekly_backup_limit;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_backup_policy __resource);
  ()