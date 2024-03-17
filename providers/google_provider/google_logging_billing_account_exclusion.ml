(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_billing_account_exclusion = {
  billing_account : string;  (** billing_account *)
  description : string option; [@option]
      (** A human-readable description. *)
  disabled : bool option; [@option]
      (** Whether this exclusion rule should be disabled or not. This defaults to false. *)
  filter : string;
      (** The filter to apply when excluding logs. Only log entries that match the filter are excluded. *)
  name : string;  (** The name of the logging exclusion. *)
}
[@@deriving yojson_of]
(** google_logging_billing_account_exclusion *)

let google_logging_billing_account_exclusion ?description ?disabled
    ~billing_account ~filter ~name __resource_id =
  let __resource_type = "google_logging_billing_account_exclusion" in
  let __resource =
    { billing_account; description; disabled; filter; name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_billing_account_exclusion __resource);
  ()
