(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_netapp_backup_vault__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_backup_vault__timeouts *)

type google_netapp_backup_vault = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  labels : (string * string) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** Location (region) of the backup vault. *)
  name : string;
      (** The resource name of the backup vault. Needs to be unique per location. *)
  timeouts : google_netapp_backup_vault__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_backup_vault *)

let google_netapp_backup_vault ?description ?labels ?timeouts
    ~location ~name __resource_id =
  let __resource_type = "google_netapp_backup_vault" in
  let __resource =
    { description; labels; location; name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_backup_vault __resource);
  ()
