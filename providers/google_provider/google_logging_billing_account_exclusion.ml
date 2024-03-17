(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_billing_account_exclusion = {
  billing_account : string prop;  (** billing_account *)
  description : string prop option; [@option]
      (** A human-readable description. *)
  disabled : bool prop option; [@option]
      (** Whether this exclusion rule should be disabled or not. This defaults to false. *)
  filter : string prop;
      (** The filter to apply when excluding logs. Only log entries that match the filter are excluded. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the logging exclusion. *)
}
[@@deriving yojson_of]
(** google_logging_billing_account_exclusion *)

type t = {
  billing_account : string prop;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
}

let google_logging_billing_account_exclusion ?description ?disabled
    ?id ~billing_account ~filter ~name __resource_id =
  let __resource_type = "google_logging_billing_account_exclusion" in
  let __resource =
    ({ billing_account; description; disabled; filter; id; name }
      : google_logging_billing_account_exclusion)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_billing_account_exclusion __resource);
  let __resource_attributes =
    ({
       billing_account =
         Prop.computed __resource_type __resource_id
           "billing_account";
       description =
         Prop.computed __resource_type __resource_id "description";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       filter = Prop.computed __resource_type __resource_id "filter";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
