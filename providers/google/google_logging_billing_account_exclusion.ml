(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let google_logging_billing_account_exclusion ?description ?disabled
    ?id ~billing_account ~filter ~name () :
    google_logging_billing_account_exclusion =
  { billing_account; description; disabled; filter; id; name }

type t = {
  billing_account : string prop;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?disabled ?id ~billing_account ~filter ~name
    __id =
  let __type = "google_logging_billing_account_exclusion" in
  let __attrs =
    ({
       billing_account = Prop.computed __type __id "billing_account";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_billing_account_exclusion
        (google_logging_billing_account_exclusion ?description
           ?disabled ?id ~billing_account ~filter ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?id ~billing_account
    ~filter ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?id ~billing_account ~filter ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
